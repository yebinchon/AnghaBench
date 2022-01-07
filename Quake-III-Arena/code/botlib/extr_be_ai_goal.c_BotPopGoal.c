
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ goalstacktop; } ;
typedef TYPE_1__ bot_goalstate_t ;


 TYPE_1__* BotGoalStateFromHandle (int) ;

void BotPopGoal(int goalstate)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;
 if (gs->goalstacktop > 0) gs->goalstacktop--;
}
