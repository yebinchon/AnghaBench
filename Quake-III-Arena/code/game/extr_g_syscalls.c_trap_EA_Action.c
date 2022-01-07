
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_EA_ACTION ;
 int syscall (int ,int,int) ;

void trap_EA_Action(int client, int action) {
 syscall( BOTLIB_EA_ACTION, client, action );
}
