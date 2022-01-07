
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ weaponweightindex; scalar_t__ weaponweightconfig; } ;
typedef TYPE_1__ bot_weaponstate_t ;


 TYPE_1__* BotWeaponStateFromHandle (int) ;
 int FreeMemory (scalar_t__) ;
 int FreeWeightConfig (scalar_t__) ;

void BotFreeWeaponWeights(int weaponstate)
{
 bot_weaponstate_t *ws;

 ws = BotWeaponStateFromHandle(weaponstate);
 if (!ws) return;
 if (ws->weaponweightconfig) FreeWeightConfig(ws->weaponweightconfig);
 if (ws->weaponweightindex) FreeMemory(ws->weaponweightindex);
}
