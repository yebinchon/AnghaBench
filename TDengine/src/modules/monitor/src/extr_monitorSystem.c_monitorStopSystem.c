
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * timer; int * initTimer; int state; } ;


 int MONITOR_STATE_STOPPED ;
 TYPE_1__* monitor ;
 int monitorLPrint (char*,int ) ;
 int * taosLogFp ;
 int taosTmrStopA (int **) ;
 int tsInternalIp ;
 int tsPrivateIp ;

void monitorStopSystem() {
  if (monitor == ((void*)0)) {
    return;
  }




  monitorLPrint("dnode:%s is stopped", tsInternalIp);

  monitor->state = MONITOR_STATE_STOPPED;
  taosLogFp = ((void*)0);
  if (monitor->initTimer != ((void*)0)) {
    taosTmrStopA(&(monitor->initTimer));
  }
  if (monitor->timer != ((void*)0)) {
    taosTmrStopA(&(monitor->timer));
  }
}
