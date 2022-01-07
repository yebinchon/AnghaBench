
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int weaponweightconfig; int weaponweightindex; } ;
typedef TYPE_1__ bot_weaponstate_t ;
struct TYPE_5__ {int (* Print ) (int ,char*,char*) ;} ;


 int BLERR_CANNOTLOADWEAPONCONFIG ;
 int BLERR_CANNOTLOADWEAPONWEIGHTS ;
 int BLERR_NOERROR ;
 int BotFreeWeaponWeights (int) ;
 TYPE_1__* BotWeaponStateFromHandle (int) ;
 int PRT_FATAL ;
 int ReadWeightConfig (char*) ;
 int WeaponWeightIndex (int ,int ) ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*,char*) ;
 int weaponconfig ;

int BotLoadWeaponWeights(int weaponstate, char *filename)
{
 bot_weaponstate_t *ws;

 ws = BotWeaponStateFromHandle(weaponstate);
 if (!ws) return BLERR_CANNOTLOADWEAPONWEIGHTS;
 BotFreeWeaponWeights(weaponstate);

 ws->weaponweightconfig = ReadWeightConfig(filename);
 if (!ws->weaponweightconfig)
 {
  botimport.Print(PRT_FATAL, "couldn't load weapon config %s\n", filename);
  return BLERR_CANNOTLOADWEAPONWEIGHTS;
 }
 if (!weaponconfig) return BLERR_CANNOTLOADWEAPONCONFIG;
 ws->weaponweightindex = WeaponWeightIndex(ws->weaponweightconfig, weaponconfig);
 return BLERR_NOERROR;
}
