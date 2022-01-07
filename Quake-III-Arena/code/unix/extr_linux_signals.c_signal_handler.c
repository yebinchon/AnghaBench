
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLimp_Shutdown () ;
 int Sys_Exit (int) ;
 int printf (char*,int) ;
 scalar_t__ qtrue ;
 scalar_t__ signalcaught ;

__attribute__((used)) static void signal_handler(int sig)
{
  if (signalcaught)
  {
    printf("DOUBLE SIGNAL FAULT: Received signal %d, exiting...\n", sig);
    Sys_Exit(1);
  }

  signalcaught = qtrue;
  printf("Received signal %d, exiting...\n", sig);

  GLimp_Shutdown();

  Sys_Exit(0);
}
