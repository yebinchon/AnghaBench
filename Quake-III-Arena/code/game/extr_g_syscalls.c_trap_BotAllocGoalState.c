
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_ALLOC_GOAL_STATE ;
 int syscall (int ,int) ;

int trap_BotAllocGoalState(int state) {
 return syscall( BOTLIB_AI_ALLOC_GOAL_STATE, state );
}
