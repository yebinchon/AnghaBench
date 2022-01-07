
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_CHOOSE_BEST_FIGHT_WEAPON ;
 int syscall (int ,int,int*) ;

int trap_BotChooseBestFightWeapon(int weaponstate, int *inventory) {
 return syscall( BOTLIB_AI_CHOOSE_BEST_FIGHT_WEAPON, weaponstate, inventory );
}
