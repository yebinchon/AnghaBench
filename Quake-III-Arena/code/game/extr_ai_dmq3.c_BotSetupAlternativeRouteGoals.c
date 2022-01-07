
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int areanum; int origin; } ;
struct TYPE_11__ {int areanum; int origin; } ;
struct TYPE_10__ {int areanum; int origin; } ;
struct TYPE_9__ {int areanum; int origin; } ;
struct TYPE_8__ {scalar_t__ areanum; int origin; } ;


 int ALTROUTEGOAL_CLUSTERPORTALS ;
 int ALTROUTEGOAL_VIEWPORTALS ;
 int BotAI_Print (int ,char*) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 int MAX_ALTROUTEGOALS ;
 int PRT_WARNING ;
 int TFL_DEFAULT ;
 scalar_t__ altroutegoals_setup ;
 int blue_altroutegoals ;
 void* blue_numaltroutegoals ;
 TYPE_7__ blueobelisk ;
 TYPE_6__ ctf_blueflag ;
 TYPE_1__ ctf_neutralflag ;
 TYPE_4__ ctf_redflag ;
 scalar_t__ gametype ;
 TYPE_1__ neutralobelisk ;
 scalar_t__ qtrue ;
 int red_altroutegoals ;
 void* red_numaltroutegoals ;
 TYPE_2__ redobelisk ;
 void* trap_AAS_AlternativeRouteGoals (int ,scalar_t__,int ,int ,int ,int ,int ,int) ;
 scalar_t__ trap_BotGetLevelItemGoal (int,char*,TYPE_1__*) ;

void BotSetupAlternativeRouteGoals(void) {

 if (altroutegoals_setup)
  return;
 altroutegoals_setup = qtrue;
}
