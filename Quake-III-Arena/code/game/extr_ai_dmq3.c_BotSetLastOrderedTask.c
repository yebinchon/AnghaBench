
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ lastgoal_ltgtype; scalar_t__ redflagstatus; scalar_t__ blueflagstatus; int ordered; scalar_t__ ltgtype; int origin; int areanum; scalar_t__ teamgoal_time; int lastgoal_teammate; int teammate; int lastgoal_teamgoal; int teamgoal; int lastgoal_decisionmaker; int decisionmaker; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_13__ {int areanum; } ;
typedef TYPE_2__ bot_goal_t ;


 TYPE_2__* BotEnemyFlag (TYPE_1__*) ;
 int BotGetAlternateRouteGoal (TYPE_1__*,int ) ;
 int BotOppositeTeam (TYPE_1__*) ;
 int BotSetTeamStatus (TYPE_1__*) ;
 scalar_t__ BotTeam (TYPE_1__*) ;
 TYPE_2__* BotTeamFlag (TYPE_1__*) ;
 scalar_t__ FloatTime () ;
 scalar_t__ GT_CTF ;
 scalar_t__ LTG_GETFLAG ;
 scalar_t__ LTG_RETURNFLAG ;
 scalar_t__ TEAM_RED ;
 int TFL_DEFAULT ;
 scalar_t__ gametype ;
 int memcpy (int *,int *,int) ;
 int qfalse ;
 int qtrue ;
 int trap_AAS_AreaTravelTimeToGoalArea (int ,int ,int ,int ) ;

int BotSetLastOrderedTask(bot_state_t *bs) {

 if (gametype == GT_CTF) {

  if ( bs->lastgoal_ltgtype == LTG_RETURNFLAG ) {
   if ( BotTeam(bs) == TEAM_RED ) {
    if ( bs->redflagstatus == 0 ) {
     bs->lastgoal_ltgtype = 0;
    }
   }
   else {
    if ( bs->blueflagstatus == 0 ) {
     bs->lastgoal_ltgtype = 0;
    }
   }
  }
 }

 if ( bs->lastgoal_ltgtype ) {
  bs->decisionmaker = bs->lastgoal_decisionmaker;
  bs->ordered = qtrue;
  bs->ltgtype = bs->lastgoal_ltgtype;
  memcpy(&bs->teamgoal, &bs->lastgoal_teamgoal, sizeof(bot_goal_t));
  bs->teammate = bs->lastgoal_teammate;
  bs->teamgoal_time = FloatTime() + 300;
  BotSetTeamStatus(bs);

  if ( gametype == GT_CTF ) {
   if ( bs->ltgtype == LTG_GETFLAG ) {
    bot_goal_t *tb, *eb;
    int tt, et;

    tb = BotTeamFlag(bs);
    eb = BotEnemyFlag(bs);
    tt = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, tb->areanum, TFL_DEFAULT);
    et = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, eb->areanum, TFL_DEFAULT);

    if (et > tt) {

     BotGetAlternateRouteGoal(bs, BotOppositeTeam(bs));
    }
   }
  }
  return qtrue;
 }
 return qfalse;
}
