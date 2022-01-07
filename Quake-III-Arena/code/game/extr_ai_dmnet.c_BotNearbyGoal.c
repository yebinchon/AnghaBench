
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int areanum; } ;
struct TYPE_7__ {int inventory; int origin; int gs; TYPE_1__ teamgoal; int areanum; } ;
typedef TYPE_2__ bot_state_t ;
typedef int bot_goal_t ;


 scalar_t__ BotCTFCarryingFlag (TYPE_2__*) ;
 scalar_t__ BotGoForAir (TYPE_2__*,int,int *,float) ;
 int TFL_DEFAULT ;
 int qtrue ;
 int trap_AAS_AreaTravelTimeToGoalArea (int ,int ,int ,int ) ;
 int trap_BotChooseNBGItem (int ,int ,int ,int,int *,float) ;

int BotNearbyGoal(bot_state_t *bs, int tfl, bot_goal_t *ltg, float range) {
 int ret;


 if (BotGoForAir(bs, tfl, ltg, range)) return qtrue;

 if (BotCTFCarryingFlag(bs)) {

  if (trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin,
    bs->teamgoal.areanum, TFL_DEFAULT) < 300) {

   range = 50;
  }
 }

 ret = trap_BotChooseNBGItem(bs->gs, bs->origin, bs->inventory, tfl, ltg, range);
 return ret;
}
