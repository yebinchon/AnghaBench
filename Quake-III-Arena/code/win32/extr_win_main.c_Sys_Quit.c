
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_Shutdown () ;
 int Sys_DestroyConsole () ;
 int exit (int ) ;
 int timeEndPeriod (int) ;

void Sys_Quit( void ) {
 timeEndPeriod( 1 );
 IN_Shutdown();
 Sys_DestroyConsole();

 exit (0);
}
