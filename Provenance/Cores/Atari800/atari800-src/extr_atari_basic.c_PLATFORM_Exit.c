
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int Log_flushlog () ;
 scalar_t__ MONITOR_Run () ;
 int TRUE ;

int PLATFORM_Exit(int run_monitor)
{
 Log_flushlog();

 if (run_monitor && MONITOR_Run())
  return TRUE;

 return FALSE;
}
