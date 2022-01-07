
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int weaponinfo_t ;
typedef int bot_weaponstate_t ;
struct TYPE_2__ {int * weaponinfo; } ;


 int BotValidWeaponNumber (int) ;
 int * BotWeaponStateFromHandle (int) ;
 int Com_Memcpy (int *,int *,int) ;
 TYPE_1__* weaponconfig ;

void BotGetWeaponInfo(int weaponstate, int weapon, weaponinfo_t *weaponinfo)
{
 bot_weaponstate_t *ws;

 if (!BotValidWeaponNumber(weapon)) return;
 ws = BotWeaponStateFromHandle(weaponstate);
 if (!ws) return;
 if (!weaponconfig) return;
 Com_Memcpy(weaponinfo, &weaponconfig->weaponinfo[weapon], sizeof(weaponinfo_t));
}
