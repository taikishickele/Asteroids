class UFOBullet extends GameObject {
 
  int timerb;
  
  UFOBullet(float j, float k) {
    
    timerb = 150;
    lives = 1;
    size = 8;
    loc = new PVector(j, k);
    vel = new PVector(playerShip.loc.x - loc.x, playerShip.loc.y - loc.y);
    vel.setMag(4);
    
  }
  
  
  
  
  void act() {
   
    super.act();
    
    timerb --;
    if (timerb == 0) {
      lives = 0;
    }

    
  }
  
  void show() {
    
    stroke(255,0,0);
    noFill();
    circle(loc.x, loc.y, size);
    
    
  }
  
  
  
  
  
  
  
}
