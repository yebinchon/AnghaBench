
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double random () ;

char *BotRandomWeaponName(void) {
 int rnd;




 rnd = random() * 8.9;

 switch(rnd) {
  case 0: return "Gauntlet";
  case 1: return "Shotgun";
  case 2: return "Machinegun";
  case 3: return "Grenade Launcher";
  case 4: return "Rocket Launcher";
  case 5: return "Plasmagun";
  case 6: return "Railgun";
  case 7: return "Lightning Gun";





  default: return "BFG10K";
 }
}
