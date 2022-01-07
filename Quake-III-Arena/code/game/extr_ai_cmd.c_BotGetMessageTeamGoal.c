
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int goal; } ;
typedef TYPE_1__ bot_waypoint_t ;
struct TYPE_6__ {int checkpoints; } ;
typedef TYPE_2__ bot_state_t ;
typedef int bot_goal_t ;


 TYPE_1__* BotFindWayPoint (int ,char*) ;
 scalar_t__ BotGetItemTeamGoal (char*,int *) ;
 int memcpy (int *,int *,int) ;
 int qfalse ;
 int qtrue ;

int BotGetMessageTeamGoal(bot_state_t *bs, char *goalname, bot_goal_t *goal) {
 bot_waypoint_t *cp;

 if (BotGetItemTeamGoal(goalname, goal)) return qtrue;

 cp = BotFindWayPoint(bs->checkpoints, goalname);
 if (cp) {
  memcpy(goal, &cp->goal, sizeof(bot_goal_t));
  return qtrue;
 }
 return qfalse;
}
