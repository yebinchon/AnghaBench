
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int itemweightconfig; } ;
typedef TYPE_1__ bot_goalstate_t ;


 TYPE_1__* BotGoalStateFromHandle (int) ;
 int InterbreedWeightConfigs (int ,int ,int ) ;

void BotInterbreedGoalFuzzyLogic(int parent1, int parent2, int child)
{
 bot_goalstate_t *p1, *p2, *c;

 p1 = BotGoalStateFromHandle(parent1);
 p2 = BotGoalStateFromHandle(parent2);
 c = BotGoalStateFromHandle(child);

 InterbreedWeightConfigs(p1->itemweightconfig, p2->itemweightconfig,
         c->itemweightconfig);
}
