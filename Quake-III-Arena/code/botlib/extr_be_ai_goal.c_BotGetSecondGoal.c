
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int goalstacktop; int * goalstack; } ;
typedef TYPE_1__ bot_goalstate_t ;
typedef int bot_goal_t ;


 TYPE_1__* BotGoalStateFromHandle (int) ;
 int Com_Memcpy (int *,int *,int) ;
 int qfalse ;
 int qtrue ;

int BotGetSecondGoal(int goalstate, bot_goal_t *goal)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return qfalse;
 if (gs->goalstacktop <= 1) return qfalse;
 Com_Memcpy(goal, &gs->goalstack[gs->goalstacktop-1], sizeof(bot_goal_t));
 return qtrue;
}
