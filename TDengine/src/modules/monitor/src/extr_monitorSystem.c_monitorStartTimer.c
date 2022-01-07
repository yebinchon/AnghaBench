
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;


 TYPE_1__* monitor ;
 int monitorSaveSystemInfo ;
 int taosTmrReset (int ,int,int *,int ,int *) ;
 int tsMonitorInterval ;
 int tscTmr ;

void monitorStartTimer() {
  taosTmrReset(monitorSaveSystemInfo, tsMonitorInterval * 1000, ((void*)0), tscTmr, &monitor->timer);
}
