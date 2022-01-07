
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* origin; scalar_t__ areanum; int lastair_time; int viewangles; int eye; int entitynum; int gs; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_8__ {int flags; scalar_t__ areanum; scalar_t__* origin; scalar_t__* mins; scalar_t__* maxs; int number; } ;
typedef TYPE_2__ bot_goal_t ;


 int FloatTime () ;
 int GFL_AIR ;
 int GFL_DROPPED ;
 int GFL_ITEM ;
 int qfalse ;
 int qtrue ;
 int trap_AAS_Swimming (scalar_t__*) ;
 scalar_t__ trap_BotItemGoalInVisButNotVisible (int ,int ,int ,TYPE_2__*) ;
 int trap_BotSetAvoidGoalTime (int ,int ,int) ;
 scalar_t__ trap_BotTouchingGoal (scalar_t__*,TYPE_2__*) ;

int BotReachedGoal(bot_state_t *bs, bot_goal_t *goal) {
 if (goal->flags & GFL_ITEM) {

  if (trap_BotTouchingGoal(bs->origin, goal)) {
   if (!(goal->flags & GFL_DROPPED)) {
    trap_BotSetAvoidGoalTime(bs->gs, goal->number, -1);
   }
   return qtrue;
  }

  if (trap_BotItemGoalInVisButNotVisible(bs->entitynum, bs->eye, bs->viewangles, goal)) {
   return qtrue;
  }

  if (bs->areanum == goal->areanum) {
   if (bs->origin[0] > goal->origin[0] + goal->mins[0] && bs->origin[0] < goal->origin[0] + goal->maxs[0]) {
    if (bs->origin[1] > goal->origin[1] + goal->mins[1] && bs->origin[1] < goal->origin[1] + goal->maxs[1]) {
     if (!trap_AAS_Swimming(bs->origin)) {
      return qtrue;
     }
    }
   }
  }
 }
 else if (goal->flags & GFL_AIR) {

  if (trap_BotTouchingGoal(bs->origin, goal)) return qtrue;

  if (bs->lastair_time > FloatTime() - 1) return qtrue;
 }
 else {

  if (trap_BotTouchingGoal(bs->origin, goal)) return qtrue;
 }
 return qfalse;
}
