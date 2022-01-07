
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int cluster; } ;
typedef TYPE_1__ aas_areainfo_t ;
struct TYPE_7__ {scalar_t__ integer; } ;


 int BotAI_Print (int ,char*,...) ;
 int BotPointAreaNum (int ) ;
 int PRT_MESSAGE ;
 TYPE_2__ bot_testclusters ;
 TYPE_2__ bot_testsolid ;
 int trap_AAS_AreaInfo (int,TYPE_1__*) ;
 int trap_AAS_Initialized () ;
 int trap_Cvar_Update (TYPE_2__*) ;

void BotTestAAS(vec3_t origin) {
 int areanum;
 aas_areainfo_t info;

 trap_Cvar_Update(&bot_testsolid);
 trap_Cvar_Update(&bot_testclusters);
 if (bot_testsolid.integer) {
  if (!trap_AAS_Initialized()) return;
  areanum = BotPointAreaNum(origin);
  if (areanum) BotAI_Print(PRT_MESSAGE, "\remtpy area");
  else BotAI_Print(PRT_MESSAGE, "\r^1SOLID area");
 }
 else if (bot_testclusters.integer) {
  if (!trap_AAS_Initialized()) return;
  areanum = BotPointAreaNum(origin);
  if (!areanum)
   BotAI_Print(PRT_MESSAGE, "\r^1Solid!                              ");
  else {
   trap_AAS_AreaInfo(areanum, &info);
   BotAI_Print(PRT_MESSAGE, "\rarea %d, cluster %d       ", areanum, info.cluster);
  }
 }
}
