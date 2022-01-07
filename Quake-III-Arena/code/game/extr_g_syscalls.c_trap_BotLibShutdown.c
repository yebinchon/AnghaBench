
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_SHUTDOWN ;
 int syscall (int ) ;

int trap_BotLibShutdown( void ) {
 return syscall( BOTLIB_SHUTDOWN );
}
