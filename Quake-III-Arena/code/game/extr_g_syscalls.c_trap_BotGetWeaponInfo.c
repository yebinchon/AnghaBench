
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_GET_WEAPON_INFO ;
 int syscall (int ,int,int,void*) ;

void trap_BotGetWeaponInfo(int weaponstate, int weapon, void *weaponinfo) {
 syscall( BOTLIB_AI_GET_WEAPON_INFO, weaponstate, weapon, weaponinfo );
}
