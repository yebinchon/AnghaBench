
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int netname ;
typedef int classname ;
typedef int buf ;
struct TYPE_7__ {int client; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_6__ {int areanum; int * origin; } ;
struct TYPE_8__ {TYPE_1__ goal; scalar_t__ shoot; } ;
typedef TYPE_3__ bot_activategoal_t ;


 int ClientName (int ,char*,int) ;
 int Com_sprintf (char*,int,char*,char*,char*,int ,int ,int ,int ) ;
 int MAX_NETNAME ;
 int trap_AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int trap_EA_Say (int ,char*) ;

void BotPrintActivateGoalInfo(bot_state_t *bs, bot_activategoal_t *activategoal, int bspent) {
 char netname[MAX_NETNAME];
 char classname[128];
 char buf[128];

 ClientName(bs->client, netname, sizeof(netname));
 trap_AAS_ValueForBSPEpairKey(bspent, "classname", classname, sizeof(classname));
 if (activategoal->shoot) {
  Com_sprintf(buf, sizeof(buf), "%s: I have to shoot at a %s from %1.1f %1.1f %1.1f in area %d\n",
      netname, classname,
      activategoal->goal.origin[0],
      activategoal->goal.origin[1],
      activategoal->goal.origin[2],
      activategoal->goal.areanum);
 }
 else {
  Com_sprintf(buf, sizeof(buf), "%s: I have to activate a %s at %1.1f %1.1f %1.1f in area %d\n",
      netname, classname,
      activategoal->goal.origin[0],
      activategoal->goal.origin[1],
      activategoal->goal.origin[2],
      activategoal->goal.areanum);
 }
 trap_EA_Say(bs->client, buf);
}
