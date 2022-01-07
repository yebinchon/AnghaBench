
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int itemweightconfig; } ;
typedef TYPE_1__ bot_goalstate_t ;


 TYPE_1__* BotGoalStateFromHandle (int) ;
 int EvolveWeightConfig (int ) ;

void BotMutateGoalFuzzyLogic(int goalstate, float range)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);

 EvolveWeightConfig(gs->itemweightconfig);
}
