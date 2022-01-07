
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AI_MOVEMENT_VIEW_TARGET ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,void*,int,int ,int ) ;

int trap_BotMovementViewTarget(int movestate, void *goal, int travelflags, float lookahead, vec3_t target) {
 return syscall( BOTLIB_AI_MOVEMENT_VIEW_TARGET, movestate, goal, travelflags, PASSFLOAT(lookahead), target );
}
