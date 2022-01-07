
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *BotWeaponNameForMeansOfDeath(int mod) {
 switch(mod) {
  case 128: return "Shotgun";
  case 143: return "Gauntlet";
  case 136: return "Machinegun";
  case 141:
  case 140: return "Grenade Launcher";
  case 130:
  case 129: return "Rocket Launcher";
  case 134:
  case 133: return "Plasmagun";
  case 131: return "Railgun";
  case 137: return "Lightning Gun";
  case 146:
  case 145: return "BFG10K";







  case 142: return "Grapple";
  default: return "[unknown weapon]";
 }
}
