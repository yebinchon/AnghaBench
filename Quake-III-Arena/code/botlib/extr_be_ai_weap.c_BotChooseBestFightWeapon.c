
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numweapons; TYPE_1__* weaponinfo; } ;
typedef TYPE_2__ weaponconfig_t ;
struct TYPE_8__ {int* weaponweightindex; int weaponweightconfig; } ;
typedef TYPE_3__ bot_weaponstate_t ;
struct TYPE_6__ {int valid; } ;


 TYPE_3__* BotWeaponStateFromHandle (int) ;
 float FuzzyWeight (int*,int ,int) ;
 TYPE_2__* weaponconfig ;

int BotChooseBestFightWeapon(int weaponstate, int *inventory)
{
 int i, index, bestweapon;
 float weight, bestweight;
 weaponconfig_t *wc;
 bot_weaponstate_t *ws;

 ws = BotWeaponStateFromHandle(weaponstate);
 if (!ws) return 0;
 wc = weaponconfig;
 if (!weaponconfig) return 0;


 if (!ws->weaponweightconfig) return 0;

 bestweight = 0;
 bestweapon = 0;
 for (i = 0; i < wc->numweapons; i++)
 {
  if (!wc->weaponinfo[i].valid) continue;
  index = ws->weaponweightindex[i];
  if (index < 0) continue;
  weight = FuzzyWeight(inventory, ws->weaponweightconfig, index);
  if (weight > bestweight)
  {
   bestweight = weight;
   bestweapon = i;
  }
 }
 return bestweapon;
}
