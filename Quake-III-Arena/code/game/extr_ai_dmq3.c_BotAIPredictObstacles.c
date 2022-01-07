
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int predictobstacles_time; TYPE_1__* activatestack; int tfl; int origin; int areanum; int predictobstacles_goalareanum; } ;
typedef TYPE_3__ bot_state_t ;
struct TYPE_20__ {int areanum; } ;
typedef TYPE_4__ bot_goal_t ;
struct TYPE_18__ {int entitynum; } ;
struct TYPE_21__ {TYPE_2__ goal; } ;
typedef TYPE_5__ bot_activategoal_t ;
struct TYPE_22__ {int stopevent; int endcontents; int endtravelflags; } ;
typedef TYPE_6__ aas_predictroute_t ;
struct TYPE_23__ {int integer; } ;
struct TYPE_17__ {int inuse; } ;


 int AREACONTENTS_MODELNUM ;
 int AREACONTENTS_MODELNUMSHIFT ;
 int AREACONTENTS_MOVER ;
 int BotEnableActivateGoalAreas (TYPE_5__*,int) ;
 int BotGetActivateGoal (TYPE_3__*,int,TYPE_5__*) ;
 int BotGoForActivateGoal (TYPE_3__*,TYPE_5__*) ;
 int BotIsGoingToActivateEntity (TYPE_3__*,int ) ;
 int BotModelMinsMaxs (int,int ,int ,int *,int *) ;
 int ET_MOVER ;
 int FloatTime () ;
 int RSE_ENTERCONTENTS ;
 int RSE_USETRAVELTYPE ;
 int TFL_BRIDGE ;
 TYPE_8__ bot_predictobstacles ;
 int qfalse ;
 int qtrue ;
 int trap_AAS_PredictRoute (TYPE_6__*,int ,int ,int ,int ,int,int,int,int,int,int ) ;

int BotAIPredictObstacles(bot_state_t *bs, bot_goal_t *goal) {
 int modelnum, entitynum, bspent;
 bot_activategoal_t activategoal;
 aas_predictroute_t route;

 if (!bot_predictobstacles.integer)
  return qfalse;


 if (bs->predictobstacles_goalareanum == goal->areanum &&
  bs->predictobstacles_time > FloatTime() - 6) {
  return qfalse;
 }
 bs->predictobstacles_goalareanum = goal->areanum;
 bs->predictobstacles_time = FloatTime();


 trap_AAS_PredictRoute(&route, bs->areanum, bs->origin,
       goal->areanum, bs->tfl, 100, 1000,
       RSE_USETRAVELTYPE|RSE_ENTERCONTENTS,
       AREACONTENTS_MOVER, TFL_BRIDGE, 0);

 if (route.stopevent & RSE_ENTERCONTENTS) {

  if (route.endcontents & AREACONTENTS_MOVER) {

   modelnum = (route.endcontents & AREACONTENTS_MODELNUM) >> AREACONTENTS_MODELNUMSHIFT;
   if (modelnum) {

    entitynum = BotModelMinsMaxs(modelnum, ET_MOVER, 0, ((void*)0), ((void*)0));
    if (entitynum) {

     bspent = BotGetActivateGoal(bs, entitynum, &activategoal);
     if (bspent) {

      if (bs->activatestack && !bs->activatestack->inuse)
       bs->activatestack = ((void*)0);

      if (!BotIsGoingToActivateEntity(bs, activategoal.goal.entitynum)) {



       BotGoForActivateGoal(bs, &activategoal);
       return qtrue;
      }
      else {

       BotEnableActivateGoalAreas(&activategoal, qtrue);
      }
     }
    }
   }
  }
 }
 else if (route.stopevent & RSE_USETRAVELTYPE) {
  if (route.endtravelflags & TFL_BRIDGE) {

  }
 }
 return qfalse;
}
