
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AI_MOVE_IN_DIRECTION ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int ,int ,int) ;

int trap_BotMoveInDirection(int movestate, vec3_t dir, float speed, int type) {
 return syscall( BOTLIB_AI_MOVE_IN_DIRECTION, movestate, dir, PASSFLOAT(speed), type );
}
