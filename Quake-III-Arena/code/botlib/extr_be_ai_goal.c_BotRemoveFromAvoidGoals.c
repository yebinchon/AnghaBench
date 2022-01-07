
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* avoidgoals; scalar_t__* avoidgoaltimes; } ;
typedef TYPE_1__ bot_goalstate_t ;


 scalar_t__ AAS_Time () ;
 TYPE_1__* BotGoalStateFromHandle (int) ;
 int MAX_AVOIDGOALS ;

void BotRemoveFromAvoidGoals(int goalstate, int number)
{
 int i;
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;

 for (i = 0; i < MAX_AVOIDGOALS; i++)
 {
  if (gs->avoidgoals[i] == number && gs->avoidgoaltimes[i] >= AAS_Time())
  {
   gs->avoidgoaltimes[i] = 0;
   return;
  }
 }
}
