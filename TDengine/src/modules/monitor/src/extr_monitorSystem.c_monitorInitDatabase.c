
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdIndex; int state; int sql; int conn; } ;


 scalar_t__ MONITOR_CMD_MAX ;
 int MONITOR_STATE_INITIALIZED ;
 int dnodeBuildMonitorSql (int ,scalar_t__) ;
 TYPE_1__* monitor ;
 int monitorInitDatabaseCb ;
 int monitorPrint (char*) ;
 int monitorStartTimer () ;
 int taos_query_a (int ,int ,int ,int *) ;

void monitorInitDatabase() {
  if (monitor->cmdIndex < MONITOR_CMD_MAX) {
    dnodeBuildMonitorSql(monitor->sql, monitor->cmdIndex);
    taos_query_a(monitor->conn, monitor->sql, monitorInitDatabaseCb, ((void*)0));
  } else {
    monitor->state = MONITOR_STATE_INITIALIZED;
    monitorPrint("monitor service init success");

    monitorStartTimer();
  }
}
