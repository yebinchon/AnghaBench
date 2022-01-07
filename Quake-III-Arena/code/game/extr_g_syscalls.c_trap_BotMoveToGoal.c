
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_MOVE_TO_GOAL ;
 int syscall (int ,void*,int,void*,int) ;

void trap_BotMoveToGoal(void *result, int movestate, void *goal, int travelflags) {
 syscall( BOTLIB_AI_MOVE_TO_GOAL, result, movestate, goal, travelflags );
}
