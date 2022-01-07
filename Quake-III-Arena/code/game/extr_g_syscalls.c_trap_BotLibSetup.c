
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_SETUP ;
 int syscall (int ) ;

int trap_BotLibSetup( void ) {
 return syscall( BOTLIB_SETUP );
}
