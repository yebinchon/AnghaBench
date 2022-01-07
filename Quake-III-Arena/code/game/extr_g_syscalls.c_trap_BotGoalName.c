
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_GOAL_NAME ;
 int syscall (int ,int,char*,int) ;

void trap_BotGoalName(int number, char *name, int size) {
 syscall( BOTLIB_AI_GOAL_NAME, number, name, size );
}
