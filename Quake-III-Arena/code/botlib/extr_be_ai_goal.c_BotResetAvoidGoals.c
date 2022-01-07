
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avoidgoaltimes; int avoidgoals; } ;
typedef TYPE_1__ bot_goalstate_t ;


 TYPE_1__* BotGoalStateFromHandle (int) ;
 int Com_Memset (int ,int ,int) ;
 int MAX_AVOIDGOALS ;

void BotResetAvoidGoals(int goalstate)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;
 Com_Memset(gs->avoidgoals, 0, MAX_AVOIDGOALS * sizeof(int));
 Com_Memset(gs->avoidgoaltimes, 0, MAX_AVOIDGOALS * sizeof(float));
}
