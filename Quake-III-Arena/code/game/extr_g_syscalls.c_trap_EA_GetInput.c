
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_EA_GET_INPUT ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int ,void*) ;

void trap_EA_GetInput(int client, float thinktime, void *input) {
 syscall( BOTLIB_EA_GET_INPUT, client, PASSFLOAT(thinktime), input );
}
