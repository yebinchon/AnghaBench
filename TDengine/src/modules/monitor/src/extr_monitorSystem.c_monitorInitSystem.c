
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int diskTimer; } ;
typedef TYPE_1__ MonitorConn ;


 int CHECK_INTERVAL ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* monitor ;
 int monitorCheckDiskUsage ;
 int monitorStartSystem ;
 int monitorStopSystem ;
 int startMonitor ;
 int stopMonitor ;
 int taosTmrReset (int ,int ,int *,int ,int *) ;
 int tscTmr ;

int monitorInitSystem() {
  monitor = (MonitorConn *)malloc(sizeof(MonitorConn));
  memset(monitor, 0, sizeof(MonitorConn));
  taosTmrReset(monitorCheckDiskUsage, CHECK_INTERVAL, ((void*)0), tscTmr, &monitor->diskTimer);

  startMonitor = monitorStartSystem;
  stopMonitor = monitorStopSystem;
  return 0;
}
