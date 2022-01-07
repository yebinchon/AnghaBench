
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int CG_GETSERVERCOMMAND ;
 int syscall (int ,int) ;

qboolean trap_GetServerCommand( int serverCommandNumber ) {
 return syscall( CG_GETSERVERCOMMAND, serverCommandNumber );
}
