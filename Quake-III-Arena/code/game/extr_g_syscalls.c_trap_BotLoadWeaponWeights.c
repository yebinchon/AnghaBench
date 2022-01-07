
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_LOAD_WEAPON_WEIGHTS ;
 int syscall (int ,int,char*) ;

int trap_BotLoadWeaponWeights(int weaponstate, char *filename) {
 return syscall( BOTLIB_AI_LOAD_WEAPON_WEIGHTS, weaponstate, filename );
}
