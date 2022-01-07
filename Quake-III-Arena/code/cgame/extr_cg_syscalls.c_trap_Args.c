
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_ARGS ;
 int syscall (int ,char*,int) ;

void trap_Args( char *buffer, int bufferLength ) {
 syscall( CG_ARGS, buffer, bufferLength );
}
