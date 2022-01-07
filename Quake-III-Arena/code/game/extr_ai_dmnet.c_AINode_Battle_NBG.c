
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_31__ {scalar_t__ enemy; int tfl; int* lastenemyorigin; int lastenemyareanum; scalar_t__ nbg_time; int* ideal_viewangles; int flags; int weaponnum; int origin; int ms; int character; int gs; scalar_t__ enemyvisible_time; int viewangles; int eye; int entitynum; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_32__ {int flags; int* ideal_viewangles; int* movedir; int weapon; scalar_t__ failure; } ;
typedef TYPE_2__ bot_moveresult_t ;
typedef int bot_goal_t ;
struct TYPE_33__ {int* origin; } ;
typedef TYPE_3__ aas_entityinfo_t ;
struct TYPE_36__ {scalar_t__ entitynum; } ;
struct TYPE_35__ {scalar_t__ integer; } ;
struct TYPE_34__ {scalar_t__ entitynum; } ;


 int AIEnter_Battle_Fight (TYPE_1__*,char*) ;
 int AIEnter_Battle_Retreat (TYPE_1__*,char*) ;
 int AIEnter_Intermission (TYPE_1__*,char*) ;
 int AIEnter_Observer (TYPE_1__*,char*) ;
 int AIEnter_Respawn (TYPE_1__*,char*) ;
 int AIEnter_Seek_NBG (TYPE_1__*,char*) ;
 int BFL_IDEALVIEWSET ;
 int BotAIBlocked (TYPE_1__*,TYPE_2__*,int) ;
 int BotAimAtEnemy (TYPE_1__*) ;
 scalar_t__ BotCanAndWantsToRocketJump (TYPE_1__*) ;
 int BotCheckAttack (TYPE_1__*) ;
 int BotChooseWeapon (TYPE_1__*) ;
 int BotEntityInfo (scalar_t__,TYPE_3__*) ;
 scalar_t__ BotEntityVisible (int ,int ,int ,int,scalar_t__) ;
 scalar_t__ BotInLavaOrSlime (TYPE_1__*) ;
 scalar_t__ BotIntermission (TYPE_1__*) ;
 scalar_t__ BotIsDead (TYPE_1__*) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 int BotMapScripts (TYPE_1__*) ;
 int BotPointAreaNum (int*) ;
 scalar_t__ BotReachedGoal (TYPE_1__*,int *) ;
 int BotSetupForMovement (TYPE_1__*) ;
 int BotUpdateBattleInventory (TYPE_1__*,scalar_t__) ;
 int CHARACTERISTIC_ATTACK_SKILL ;
 scalar_t__ EntityIsDead (TYPE_3__*) ;
 scalar_t__ FloatTime () ;
 scalar_t__ MAX_CLIENTS ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTVIEWSET ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int MOVERESULT_SWIMVIEW ;
 int TFL_DEFAULT ;
 int TFL_GRAPPLEHOOK ;
 int TFL_LAVA ;
 int TFL_ROCKETJUMP ;
 int TFL_SLIME ;
 int VectorCopy (int*,int*) ;
 int VectorSubtract (int*,int ,int*) ;
 TYPE_7__ blueobelisk ;
 TYPE_6__ bot_grapple ;
 int qfalse ;
 int qtrue ;
 TYPE_5__ redobelisk ;
 scalar_t__ trap_AAS_AreaReachability (int) ;
 scalar_t__ trap_BotGetTopGoal (int ,int *) ;
 int trap_BotMoveToGoal (TYPE_2__*,int ,int *,int) ;
 scalar_t__ trap_BotMovementViewTarget (int ,int *,int,int,int*) ;
 int trap_BotPopGoal (int ) ;
 int trap_BotResetAvoidReach (int ) ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int vectoangles (int*,int*) ;

int AINode_Battle_NBG(bot_state_t *bs) {
 int areanum;
 bot_goal_t goal;
 aas_entityinfo_t entinfo;
 bot_moveresult_t moveresult;
 float attack_skill;
 vec3_t target, dir;

 if (BotIsObserver(bs)) {
  AIEnter_Observer(bs, "battle nbg: observer");
  return qfalse;
 }

 if (BotIntermission(bs)) {
  AIEnter_Intermission(bs, "battle nbg: intermission");
  return qfalse;
 }

 if (BotIsDead(bs)) {
  AIEnter_Respawn(bs, "battle nbg: bot dead");
  return qfalse;
 }

 if (bs->enemy < 0) {
  AIEnter_Seek_NBG(bs, "battle nbg: no enemy");
  return qfalse;
 }

 BotEntityInfo(bs->enemy, &entinfo);
 if (EntityIsDead(&entinfo)) {
  AIEnter_Seek_NBG(bs, "battle nbg: enemy dead");
  return qfalse;
 }

 bs->tfl = TFL_DEFAULT;
 if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;

 if (BotInLavaOrSlime(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;

 if (BotCanAndWantsToRocketJump(bs)) {
  bs->tfl |= TFL_ROCKETJUMP;
 }

 BotMapScripts(bs);

 if (BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy)) {
  bs->enemyvisible_time = FloatTime();
  VectorCopy(entinfo.origin, target);

  if (bs->enemy >= MAX_CLIENTS) {







  }

  areanum = BotPointAreaNum(target);
  if (areanum && trap_AAS_AreaReachability(areanum)) {
   VectorCopy(target, bs->lastenemyorigin);
   bs->lastenemyareanum = areanum;
  }
 }

 if (!trap_BotGetTopGoal(bs->gs, &goal)) {
  bs->nbg_time = 0;
 }
 else if (BotReachedGoal(bs, &goal)) {
  bs->nbg_time = 0;
 }

 if (bs->nbg_time < FloatTime()) {

  trap_BotPopGoal(bs->gs);

  if (trap_BotGetTopGoal(bs->gs, &goal))
   AIEnter_Battle_Retreat(bs, "battle nbg: time out");
  else
   AIEnter_Battle_Fight(bs, "battle nbg: time out");

  return qfalse;
 }

 BotSetupForMovement(bs);

 trap_BotMoveToGoal(&moveresult, bs->ms, &goal, bs->tfl);

 if (moveresult.failure) {

  trap_BotResetAvoidReach(bs->ms);

  bs->nbg_time = 0;
 }

 BotAIBlocked(bs, &moveresult, qfalse);

 BotUpdateBattleInventory(bs, bs->enemy);

 BotChooseWeapon(bs);

 if (moveresult.flags & (MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
  VectorCopy(moveresult.ideal_viewangles, bs->ideal_viewangles);
 }
 else if (!(moveresult.flags & MOVERESULT_MOVEMENTVIEWSET)
    && !(bs->flags & BFL_IDEALVIEWSET)) {
  attack_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_ATTACK_SKILL, 0, 1);

  if (attack_skill > 0.3) {

   BotAimAtEnemy(bs);
  }
  else {
   if (trap_BotMovementViewTarget(bs->ms, &goal, bs->tfl, 300, target)) {
    VectorSubtract(target, bs->origin, dir);
    vectoangles(dir, bs->ideal_viewangles);
   }
   else {
    vectoangles(moveresult.movedir, bs->ideal_viewangles);
   }
   bs->ideal_viewangles[2] *= 0.5;
  }
 }

 if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;

 BotCheckAttack(bs);

 return qtrue;
}
