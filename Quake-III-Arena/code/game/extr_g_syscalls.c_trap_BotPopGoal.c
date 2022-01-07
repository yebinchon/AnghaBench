
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_POP_GOAL ;
 int syscall (int ,int) ;

void trap_BotPopGoal(int goalstate) {
 syscall( BOTLIB_AI_POP_GOAL, goalstate );
}
