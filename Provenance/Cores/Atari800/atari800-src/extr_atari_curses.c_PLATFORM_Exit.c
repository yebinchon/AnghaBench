
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int Log_flushlog () ;
 scalar_t__ MONITOR_Run () ;
 int TRUE ;
 int curs_set (int) ;
 int endwin () ;

int PLATFORM_Exit(int run_monitor)
{
 curs_set(1);
 endwin();
 Log_flushlog();

 if (run_monitor && MONITOR_Run()) {
  curs_set(0);
  return TRUE;
 }
 return FALSE;
}
