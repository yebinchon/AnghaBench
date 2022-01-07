
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int lastair_time; int gs; int inventory; int origin; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_11__ {int origin; } ;
typedef TYPE_2__ bot_goal_t ;


 scalar_t__ BotGetAirGoal (TYPE_1__*,TYPE_2__*) ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_WATER ;
 int FloatTime () ;
 int qfalse ;
 int qtrue ;
 int trap_AAS_PointContents (int ) ;
 scalar_t__ trap_BotChooseNBGItem (int ,int ,int ,int,TYPE_2__*,float) ;
 int trap_BotGetTopGoal (int ,TYPE_2__*) ;
 int trap_BotPopGoal (int ) ;
 int trap_BotPushGoal (int ,TYPE_2__*) ;
 int trap_BotResetAvoidGoals (int ) ;

int BotGoForAir(bot_state_t *bs, int tfl, bot_goal_t *ltg, float range) {
 bot_goal_t goal;


 if (bs->lastair_time < FloatTime() - 6) {





  if (BotGetAirGoal(bs, &goal)) {
   trap_BotPushGoal(bs->gs, &goal);
   return qtrue;
  }
  else {

   while(trap_BotChooseNBGItem(bs->gs, bs->origin, bs->inventory, tfl, ltg, range)) {
    trap_BotGetTopGoal(bs->gs, &goal);

    if (!(trap_AAS_PointContents(goal.origin) & (CONTENTS_WATER|CONTENTS_SLIME|CONTENTS_LAVA))) {
     return qtrue;
    }
    trap_BotPopGoal(bs->gs);
   }
   trap_BotResetAvoidGoals(bs->gs);
  }
 }
 return qfalse;
}
