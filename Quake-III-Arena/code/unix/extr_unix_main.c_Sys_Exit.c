
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sys_ConsoleInputShutdown () ;
 int _exit (int) ;
 int assert (int) ;
 int exit (int) ;

void Sys_Exit( int ex ) {
  Sys_ConsoleInputShutdown();
  assert( ex == 0 );
  exit(ex);

}
