
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_GET_TOP_GOAL ;
 int syscall (int ,int,void*) ;

int trap_BotGetTopGoal(int goalstate, void *goal) {
 return syscall( BOTLIB_AI_GET_TOP_GOAL, goalstate, goal );
}
