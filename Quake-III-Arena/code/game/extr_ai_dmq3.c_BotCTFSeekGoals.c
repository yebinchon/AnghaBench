
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_24__ {scalar_t__ number; } ;
struct TYPE_22__ {scalar_t__ areanum; } ;
struct TYPE_23__ {scalar_t__ ltgtype; int teamgoal_time; scalar_t__ rushbaseaway_time; int redflagstatus; int blueflagstatus; int teammate; scalar_t__ owndecision_time; int arrive_time; double formation_dist; scalar_t__ ctfroam_time; int teamtaskpreference; scalar_t__ defendaway_time; TYPE_3__ teamgoal; void* ordered; int client; int decisionmaker; scalar_t__ teammessage_time; scalar_t__ lastgoal_ltgtype; scalar_t__ teammatevisible_time; TYPE_1__ altroutegoal; int origin; } ;
typedef TYPE_2__ bot_state_t ;
typedef int bot_goal_t ;
typedef int aas_entityinfo_t ;
struct TYPE_25__ {scalar_t__ number; scalar_t__ areanum; int origin; } ;


 int BotAggression (TYPE_2__*) ;
 scalar_t__ BotCTFCarryingFlag (TYPE_2__*) ;
 int BotEnemyFlagCarrierVisible (TYPE_2__*) ;
 int BotEntityInfo (int,int *) ;
 int BotGetAlternateRouteGoal (TYPE_2__*,int ) ;
 int BotOppositeTeam (TYPE_2__*) ;
 int BotPrintTeamGoal (TYPE_2__*) ;
 int BotRefuseOrder (TYPE_2__*) ;
 scalar_t__ BotSetLastOrderedTask (TYPE_2__*) ;
 int BotSetTeamStatus (TYPE_2__*) ;
 int BotSetUserInfo (TYPE_2__*,char*,int ) ;
 int const BotTeam (TYPE_2__*) ;
 int BotTeamFlagCarrierVisible (TYPE_2__*) ;
 scalar_t__ BotTeamLeader (TYPE_2__*) ;
 int BotVoiceChat (TYPE_2__*,int,int ) ;
 scalar_t__ CTF_GETFLAG_TIME ;
 scalar_t__ CTF_RETURNFLAG_TIME ;
 scalar_t__ CTF_ROAM_TIME ;
 scalar_t__ CTF_RUSHBASE_TIME ;
 int EntityCarriesFlag (int *) ;
 scalar_t__ FloatTime () ;
 scalar_t__ LTG_CAMPORDER ;
 scalar_t__ LTG_DEFENDKEYAREA ;
 scalar_t__ LTG_GETFLAG ;
 scalar_t__ LTG_GETITEM ;
 scalar_t__ LTG_MAKELOVE_ONTOP ;
 scalar_t__ LTG_MAKELOVE_UNDER ;
 scalar_t__ LTG_PATROL ;
 scalar_t__ LTG_RETURNFLAG ;
 scalar_t__ LTG_RUSHBASE ;
 scalar_t__ LTG_TEAMACCOMPANY ;
 scalar_t__ LTG_TEAMHELP ;
 int TEAMTASK_OFFENSE ;
 int TEAMTP_ATTACKER ;
 int TEAMTP_DEFENDER ;
 scalar_t__ TEAM_ACCOMPANY_TIME ;

 scalar_t__ TEAM_DEFENDKEYAREA_TIME ;

 int VOICECHAT_IHAVEFLAG ;
 int VOICECHAT_ONFOLLOW ;
 int VectorLength (int ) ;
 int VectorSet (int ,int,int,int) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_4__ ctf_blueflag ;
 TYPE_4__ ctf_redflag ;
 int memcpy (TYPE_3__*,TYPE_4__*,int) ;
 void* qfalse ;
 int random () ;
 int va (char*,int ) ;

void BotCTFSeekGoals(bot_state_t *bs) {
 float rnd, l1, l2;
 int flagstatus, c;
 vec3_t dir;
 aas_entityinfo_t entinfo;


 if (BotCTFCarryingFlag(bs)) {

  if (bs->ltgtype != LTG_RUSHBASE) {
   BotRefuseOrder(bs);
   bs->ltgtype = LTG_RUSHBASE;
   bs->teamgoal_time = FloatTime() + CTF_RUSHBASE_TIME;
   bs->rushbaseaway_time = 0;
   bs->decisionmaker = bs->client;
   bs->ordered = qfalse;

   switch(BotTeam(bs)) {
    case 128: VectorSubtract(bs->origin, ctf_blueflag.origin, dir); break;
    case 129: VectorSubtract(bs->origin, ctf_redflag.origin, dir); break;
    default: VectorSet(dir, 999, 999, 999); break;
   }

   if ( VectorLength(dir) < 128 ) {

    BotGetAlternateRouteGoal(bs, BotOppositeTeam(bs));
   } else {

    bs->altroutegoal.areanum = 0;
   }
   BotSetUserInfo(bs, "teamtask", va("%d", TEAMTASK_OFFENSE));
   BotVoiceChat(bs, -1, VOICECHAT_IHAVEFLAG);
  }
  else if (bs->rushbaseaway_time > FloatTime()) {
   if (BotTeam(bs) == 128) flagstatus = bs->redflagstatus;
   else flagstatus = bs->blueflagstatus;

   if (flagstatus == 0) {
    bs->rushbaseaway_time = 0;
   }
  }
  return;
 }

 if ( bs->ltgtype == LTG_TEAMACCOMPANY && !bs->ordered ) {

  BotEntityInfo(bs->teammate, &entinfo);
  if (!EntityCarriesFlag(&entinfo)) {
   bs->ltgtype = 0;
  }
 }

 if (BotTeam(bs) == 128) flagstatus = bs->redflagstatus * 2 + bs->blueflagstatus;
 else flagstatus = bs->blueflagstatus * 2 + bs->redflagstatus;

 if (flagstatus == 1) {

  if (bs->owndecision_time < FloatTime()) {

   if (!(bs->ltgtype == LTG_DEFENDKEYAREA &&
     (bs->teamgoal.number == ctf_redflag.number ||
     bs->teamgoal.number == ctf_blueflag.number))) {

    c = BotTeamFlagCarrierVisible(bs);
    if (c >= 0 &&

      (bs->ltgtype != LTG_TEAMACCOMPANY || bs->teammate != c)) {

     BotRefuseOrder(bs);

     bs->decisionmaker = bs->client;
     bs->ordered = qfalse;

     bs->teammate = c;

     bs->teammatevisible_time = FloatTime();

     bs->teammessage_time = 0;

     bs->arrive_time = 1;

     BotVoiceChat(bs, bs->teammate, VOICECHAT_ONFOLLOW);

     bs->teamgoal_time = FloatTime() + TEAM_ACCOMPANY_TIME;
     bs->ltgtype = LTG_TEAMACCOMPANY;
     bs->formation_dist = 3.5 * 32;
     BotSetTeamStatus(bs);
     bs->owndecision_time = FloatTime() + 5;
    }
   }
  }
  return;
 }

 else if (flagstatus == 2) {

  if (bs->owndecision_time < FloatTime()) {

   c = BotEnemyFlagCarrierVisible(bs);
   if (c >= 0) {

   }

   if (bs->ltgtype != LTG_GETFLAG &&
    bs->ltgtype != LTG_RETURNFLAG &&
    bs->ltgtype != LTG_TEAMHELP &&
    bs->ltgtype != LTG_TEAMACCOMPANY &&
    bs->ltgtype != LTG_CAMPORDER &&
    bs->ltgtype != LTG_PATROL &&
    bs->ltgtype != LTG_GETITEM) {

    BotRefuseOrder(bs);
    bs->decisionmaker = bs->client;
    bs->ordered = qfalse;

    if (random() < 0.5) {

     bs->ltgtype = LTG_GETFLAG;
    }
    else {
     bs->ltgtype = LTG_RETURNFLAG;
    }

    bs->teammessage_time = 0;

    bs->teamgoal_time = FloatTime() + CTF_GETFLAG_TIME;

    BotGetAlternateRouteGoal(bs, BotOppositeTeam(bs));

    BotSetTeamStatus(bs);
    bs->owndecision_time = FloatTime() + 5;
   }
  }
  return;
 }

 else if (flagstatus == 3) {

  if (bs->owndecision_time < FloatTime()) {

   if ( bs->ltgtype != LTG_RETURNFLAG && bs->ltgtype != LTG_TEAMACCOMPANY ) {

    c = BotTeamFlagCarrierVisible(bs);

    if (c >= 0) {
     BotRefuseOrder(bs);

     bs->decisionmaker = bs->client;
     bs->ordered = qfalse;

     bs->teammate = c;

     bs->teammatevisible_time = FloatTime();

     bs->teammessage_time = 0;

     bs->arrive_time = 1;

     BotVoiceChat(bs, bs->teammate, VOICECHAT_ONFOLLOW);

     bs->teamgoal_time = FloatTime() + TEAM_ACCOMPANY_TIME;
     bs->ltgtype = LTG_TEAMACCOMPANY;
     bs->formation_dist = 3.5 * 32;

     BotSetTeamStatus(bs);
     bs->owndecision_time = FloatTime() + 5;
    }
    else {
     BotRefuseOrder(bs);
     bs->decisionmaker = bs->client;
     bs->ordered = qfalse;

     bs->teammessage_time = FloatTime() + 2 * random();

     bs->ltgtype = LTG_RETURNFLAG;

     bs->teamgoal_time = FloatTime() + CTF_RETURNFLAG_TIME;

     BotGetAlternateRouteGoal(bs, BotOppositeTeam(bs));

     BotSetTeamStatus(bs);
     bs->owndecision_time = FloatTime() + 5;
    }
   }
  }
  return;
 }

 if (BotTeamLeader(bs)) {
  return;
 }

 if ( bs->lastgoal_ltgtype ) {
  bs->teamgoal_time += 60;
 }

 if ( !bs->ordered && bs->lastgoal_ltgtype ) {
  bs->ltgtype = 0;
 }

 if (bs->ltgtype == LTG_TEAMHELP ||
   bs->ltgtype == LTG_TEAMACCOMPANY ||
   bs->ltgtype == LTG_DEFENDKEYAREA ||
   bs->ltgtype == LTG_GETFLAG ||
   bs->ltgtype == LTG_RUSHBASE ||
   bs->ltgtype == LTG_RETURNFLAG ||
   bs->ltgtype == LTG_CAMPORDER ||
   bs->ltgtype == LTG_PATROL ||
   bs->ltgtype == LTG_GETITEM ||
   bs->ltgtype == LTG_MAKELOVE_UNDER ||
   bs->ltgtype == LTG_MAKELOVE_ONTOP) {
  return;
 }

 if (BotSetLastOrderedTask(bs))
  return;

 if (bs->owndecision_time > FloatTime())
  return;;

 if (bs->ctfroam_time > FloatTime())
  return;

 if (BotAggression(bs) < 50)
  return;

 bs->teammessage_time = FloatTime() + 2 * random();

 if (bs->teamtaskpreference & (TEAMTP_ATTACKER|TEAMTP_DEFENDER)) {
  if (bs->teamtaskpreference & TEAMTP_ATTACKER) {
   l1 = 0.7f;
  }
  else {
   l1 = 0.2f;
  }
  l2 = 0.9f;
 }
 else {
  l1 = 0.4f;
  l2 = 0.7f;
 }

 rnd = random();
 if (rnd < l1 && ctf_redflag.areanum && ctf_blueflag.areanum) {
  bs->decisionmaker = bs->client;
  bs->ordered = qfalse;
  bs->ltgtype = LTG_GETFLAG;

  bs->teamgoal_time = FloatTime() + CTF_GETFLAG_TIME;

  BotGetAlternateRouteGoal(bs, BotOppositeTeam(bs));
  BotSetTeamStatus(bs);
 }
 else if (rnd < l2 && ctf_redflag.areanum && ctf_blueflag.areanum) {
  bs->decisionmaker = bs->client;
  bs->ordered = qfalse;

  if (BotTeam(bs) == 128) memcpy(&bs->teamgoal, &ctf_redflag, sizeof(bot_goal_t));
  else memcpy(&bs->teamgoal, &ctf_blueflag, sizeof(bot_goal_t));

  bs->ltgtype = LTG_DEFENDKEYAREA;

  bs->teamgoal_time = FloatTime() + TEAM_DEFENDKEYAREA_TIME;
  bs->defendaway_time = 0;
  BotSetTeamStatus(bs);
 }
 else {
  bs->ltgtype = 0;

  bs->ctfroam_time = FloatTime() + CTF_ROAM_TIME;
  BotSetTeamStatus(bs);
 }
 bs->owndecision_time = FloatTime() + 5;



}
