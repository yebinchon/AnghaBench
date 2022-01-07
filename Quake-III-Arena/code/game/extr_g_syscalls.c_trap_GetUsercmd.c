
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usercmd_t ;


 int G_GET_USERCMD ;
 int syscall (int ,int,int *) ;

void trap_GetUsercmd( int clientNum, usercmd_t *cmd ) {
 syscall( G_GET_USERCMD, clientNum, cmd );
}
