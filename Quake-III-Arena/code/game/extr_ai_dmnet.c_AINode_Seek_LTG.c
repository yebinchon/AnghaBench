
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_37__ {int tfl; int enemy; int killedenemy_time; int thinktime; int check_time; scalar_t__ ltgtype; int nbg_time; double* ideal_viewangles; int flags; int weaponnum; int origin; int ms; scalar_t__ ltg_time; int gs; int client; scalar_t__ stand_time; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_38__ {int flags; int weapon; int movedir; int ideal_viewangles; scalar_t__ failure; } ;
typedef TYPE_2__ bot_moveresult_t ;
typedef int bot_goal_t ;
struct TYPE_39__ {scalar_t__ integer; } ;


 int AIEnter_Battle_Fight (TYPE_1__*,char*) ;
 int AIEnter_Battle_Retreat (TYPE_1__*,char*) ;
 int AIEnter_Intermission (TYPE_1__*,char*) ;
 int AIEnter_Observer (TYPE_1__*,char*) ;
 int AIEnter_Respawn (TYPE_1__*,char*) ;
 int AIEnter_Seek_NBG (TYPE_1__*,char*) ;
 int AIEnter_Stand (TYPE_1__*,char*) ;
 int BFL_IDEALVIEWSET ;
 scalar_t__ Bot1FCTFCarryingFlag (TYPE_1__*) ;
 int BotAIBlocked (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ BotAIPredictObstacles (TYPE_1__*,int *) ;
 scalar_t__ BotCTFCarryingFlag (TYPE_1__*) ;
 scalar_t__ BotCanAndWantsToRocketJump (TYPE_1__*) ;
 scalar_t__ BotChatTime (TYPE_1__*) ;
 scalar_t__ BotChat_Random (TYPE_1__*) ;
 int BotClearPath (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ BotFindEnemy (TYPE_1__*,int) ;
 scalar_t__ BotHarvesterCarryingCubes (TYPE_1__*) ;
 scalar_t__ BotInLavaOrSlime (TYPE_1__*) ;
 scalar_t__ BotIntermission (TYPE_1__*) ;
 scalar_t__ BotIsDead (TYPE_1__*) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 int BotLongTermGoal (TYPE_1__*,int,int,int *) ;
 int BotMapScripts (TYPE_1__*) ;
 scalar_t__ BotNearbyGoal (TYPE_1__*,int,int *,int) ;
 int BotRoamGoal (TYPE_1__*,int ) ;
 int BotSetupForMovement (TYPE_1__*) ;
 int BotTeamGoals (TYPE_1__*,int) ;
 int BotWantsToCamp (TYPE_1__*) ;
 scalar_t__ BotWantsToRetreat (TYPE_1__*) ;
 int FloatTime () ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ LTG_DEFENDKEYAREA ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTVIEWSET ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int MOVERESULT_SWIMVIEW ;
 int MOVERESULT_WAITING ;
 int TFL_DEFAULT ;
 int TFL_GRAPPLEHOOK ;
 int TFL_LAVA ;
 int TFL_ROCKETJUMP ;
 int TFL_SLIME ;
 int VectorCopy (int ,double*) ;
 scalar_t__ VectorLengthSquared (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_4__ bot_grapple ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 double random () ;
 int trap_BotEmptyGoalStack (int ) ;
 int trap_BotMoveToGoal (TYPE_2__*,int ,int *,int) ;
 scalar_t__ trap_BotMovementViewTarget (int ,int *,int,int,int ) ;
 int trap_BotResetAvoidReach (int ) ;
 int trap_BotResetLastAvoidReach (int ) ;
 int trap_EA_Gesture (int ) ;
 int vectoangles (int ,double*) ;

int AINode_Seek_LTG(bot_state_t *bs)
{
 bot_goal_t goal;
 vec3_t target, dir;
 bot_moveresult_t moveresult;
 int range;



 if (BotIsObserver(bs)) {
  AIEnter_Observer(bs, "seek ltg: observer");
  return qfalse;
 }

 if (BotIntermission(bs)) {
  AIEnter_Intermission(bs, "seek ltg: intermission");
  return qfalse;
 }

 if (BotIsDead(bs)) {
  AIEnter_Respawn(bs, "seek ltg: bot dead");
  return qfalse;
 }

 if (BotChat_Random(bs)) {
  bs->stand_time = FloatTime() + BotChatTime(bs);
  AIEnter_Stand(bs, "seek ltg: random chat");
  return qfalse;
 }

 bs->tfl = TFL_DEFAULT;
 if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;

 if (BotInLavaOrSlime(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;

 if (BotCanAndWantsToRocketJump(bs)) {
  bs->tfl |= TFL_ROCKETJUMP;
 }

 BotMapScripts(bs);

 bs->enemy = -1;

 if (bs->killedenemy_time > FloatTime() - 2) {
  if (random() < bs->thinktime * 1) {
   trap_EA_Gesture(bs->client);
  }
 }

 if (BotFindEnemy(bs, -1)) {
  if (BotWantsToRetreat(bs)) {

   AIEnter_Battle_Retreat(bs, "seek ltg: found enemy");
   return qfalse;
  }
  else {
   trap_BotResetLastAvoidReach(bs->ms);

   trap_BotEmptyGoalStack(bs->gs);

   AIEnter_Battle_Fight(bs, "seek ltg: found enemy");
   return qfalse;
  }
 }

 BotTeamGoals(bs, qfalse);

 if (!BotLongTermGoal(bs, bs->tfl, qfalse, &goal)) {
  return qtrue;
 }

 if (bs->check_time < FloatTime()) {
  bs->check_time = FloatTime() + 0.5;

  BotWantsToCamp(bs);

  if (bs->ltgtype == LTG_DEFENDKEYAREA) range = 400;
  else range = 150;
  if (BotNearbyGoal(bs, bs->tfl, &goal, range)) {
   trap_BotResetLastAvoidReach(bs->ms);





   bs->nbg_time = FloatTime() + 4 + range * 0.01;
   AIEnter_Seek_NBG(bs, "ltg seek: nbg");
   return qfalse;
  }
 }

 if (BotAIPredictObstacles(bs, &goal))
  return qfalse;

 BotSetupForMovement(bs);

 trap_BotMoveToGoal(&moveresult, bs->ms, &goal, bs->tfl);

 if (moveresult.failure) {

  trap_BotResetAvoidReach(bs->ms);

  bs->ltg_time = 0;
 }

 BotAIBlocked(bs, &moveresult, qtrue);

 BotClearPath(bs, &moveresult);

 if (moveresult.flags & (MOVERESULT_MOVEMENTVIEWSET|MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
  VectorCopy(moveresult.ideal_viewangles, bs->ideal_viewangles);
 }

 else if (moveresult.flags & MOVERESULT_WAITING) {
  if (random() < bs->thinktime * 0.8) {
   BotRoamGoal(bs, target);
   VectorSubtract(target, bs->origin, dir);
   vectoangles(dir, bs->ideal_viewangles);
   bs->ideal_viewangles[2] *= 0.5;
  }
 }
 else if (!(bs->flags & BFL_IDEALVIEWSET)) {
  if (trap_BotMovementViewTarget(bs->ms, &goal, bs->tfl, 300, target)) {
   VectorSubtract(target, bs->origin, dir);
   vectoangles(dir, bs->ideal_viewangles);
  }

  else if (VectorLengthSquared(moveresult.movedir)) {
   vectoangles(moveresult.movedir, bs->ideal_viewangles);
  }
  else if (random() < bs->thinktime * 0.8) {
   BotRoamGoal(bs, target);
   VectorSubtract(target, bs->origin, dir);
   vectoangles(dir, bs->ideal_viewangles);
   bs->ideal_viewangles[2] *= 0.5;
  }
  bs->ideal_viewangles[2] *= 0.5;
 }

 if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;

 return qtrue;
}
