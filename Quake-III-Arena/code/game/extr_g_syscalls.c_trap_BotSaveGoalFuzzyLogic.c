
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_SAVE_GOAL_FUZZY_LOGIC ;
 int syscall (int ,int,char*) ;

void trap_BotSaveGoalFuzzyLogic(int goalstate, char *filename) {
 syscall( BOTLIB_AI_SAVE_GOAL_FUZZY_LOGIC, goalstate, filename );
}
