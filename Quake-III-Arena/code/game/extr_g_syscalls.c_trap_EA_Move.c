
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_EA_MOVE ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int ,int ) ;

void trap_EA_Move(int client, vec3_t dir, float speed) {
 syscall( BOTLIB_EA_MOVE, client, dir, PASSFLOAT(speed) );
}
