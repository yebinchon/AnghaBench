
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_goalstate_t ;


 int * BotGoalStateFromHandle (int) ;

void BotSaveGoalFuzzyLogic(int goalstate, char *filename)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);


}
