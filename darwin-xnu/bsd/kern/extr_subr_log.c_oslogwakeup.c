
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_selp; } ;


 int LOG_LOCK () ;
 int LOG_UNLOCK () ;
 int os_log_wakeup ;
 int oslog_open ;
 TYPE_1__ oslogsoftc ;
 int selwakeup (int *) ;

void
oslogwakeup(void)
{
 LOG_LOCK();
 if (!oslog_open) {
  LOG_UNLOCK();
  return;
 }
 selwakeup(&oslogsoftc.sc_selp);
 os_log_wakeup = 1;
 LOG_UNLOCK();
}
