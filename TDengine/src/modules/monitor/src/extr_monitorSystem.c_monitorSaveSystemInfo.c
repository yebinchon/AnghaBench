
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_2__ {scalar_t__ state; char* sql; char* privateIpStr; int * timer; int conn; } ;


 scalar_t__ MONITOR_STATE_INITIALIZED ;
 scalar_t__ MONITOR_STATE_STOPPED ;
 int SQL_LENGTH ;
 int dnodeMontiorInsertSysCallback ;
 TYPE_1__* monitor ;
 scalar_t__ monitorBuildBandSql (char*) ;
 scalar_t__ monitorBuildCpuSql (char*) ;
 scalar_t__ monitorBuildDiskSql (char*) ;
 scalar_t__ monitorBuildIoSql (char*) ;
 scalar_t__ monitorBuildMemorySql (char*) ;
 scalar_t__ monitorBuildReqSql (char*) ;
 int * monitorCountReqFp ;
 int monitorStartTimer () ;
 int monitorTrace (char*,int ,char*) ;
 int snprintf (char*,int ,char*,char*,char*,int ) ;
 int taosGetTimestampUs () ;
 int taos_query_a (int ,char*,int ,char*) ;
 char* tsMonitorDbName ;

void monitorSaveSystemInfo() {
  if (monitor->state != MONITOR_STATE_INITIALIZED) {
    return;
  }

  if (monitorCountReqFp == ((void*)0)) {
    return;
  }

  int64_t ts = taosGetTimestampUs();
  char * sql = monitor->sql;
  int pos = snprintf(sql, SQL_LENGTH, "insert into %s.dn_%s values(%ld", tsMonitorDbName, monitor->privateIpStr, ts);

  pos += monitorBuildCpuSql(sql + pos);
  pos += monitorBuildMemorySql(sql + pos);
  pos += monitorBuildDiskSql(sql + pos);
  pos += monitorBuildBandSql(sql + pos);
  pos += monitorBuildIoSql(sql + pos);
  pos += monitorBuildReqSql(sql + pos);

  monitorTrace("monitor:%p, save system info, sql:%s", monitor->conn, sql);
  taos_query_a(monitor->conn, sql, dnodeMontiorInsertSysCallback, "log");

  if (monitor->timer != ((void*)0) && monitor->state != MONITOR_STATE_STOPPED) {
    monitorStartTimer();
  }
}
