
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct weightconfig_s {int dummy; } ;
struct TYPE_3__ {int* weaponweightindex; struct weightconfig_s* weaponweightconfig; } ;
typedef TYPE_1__ bot_weaponstate_t ;


 TYPE_1__* BotWeaponStateFromHandle (int) ;

void BotResetWeaponState(int weaponstate)
{
 struct weightconfig_s *weaponweightconfig;
 int *weaponweightindex;
 bot_weaponstate_t *ws;

 ws = BotWeaponStateFromHandle(weaponstate);
 if (!ws) return;
 weaponweightconfig = ws->weaponweightconfig;
 weaponweightindex = ws->weaponweightindex;


 ws->weaponweightconfig = weaponweightconfig;
 ws->weaponweightindex = weaponweightindex;
}
