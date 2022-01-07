
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AI_ADD_AVOID_SPOT ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int ,int ,int) ;

void trap_BotAddAvoidSpot(int movestate, vec3_t origin, float radius, int type) {
 syscall( BOTLIB_AI_ADD_AVOID_SPOT, movestate, origin, PASSFLOAT(radius), type);
}
