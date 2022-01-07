
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_AVOID_GOAL_TIME ;
 int syscall (int ,int,int) ;

float trap_BotAvoidGoalTime(int goalstate, int number) {
 int temp;
 temp = syscall( BOTLIB_AI_AVOID_GOAL_TIME, goalstate, number );
 return (*(float*)&temp);
}
