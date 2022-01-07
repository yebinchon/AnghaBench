
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int8_t ;
typedef int int64_t ;
struct TYPE_2__ {int conn; } ;


 int dnodeMontiorInsertAcctCallback ;
 TYPE_1__* monitor ;
 int monitorTrace (char*,int ,char*) ;
 int sprintf (char*,char*,char*,char*,char*,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int ) ;
 int taos_query_a (int ,char*,int ,char*) ;
 char* tsMonitorDbName ;

void monitorSaveAcctLog(char *acctId, int64_t currentPointsPerSecond, int64_t maxPointsPerSecond,
                        int64_t totalTimeSeries, int64_t maxTimeSeries, int64_t totalStorage, int64_t maxStorage,
                        int64_t totalQueryTime, int64_t maxQueryTime, int64_t totalInbound, int64_t maxInbound,
                        int64_t totalOutbound, int64_t maxOutbound, int64_t totalDbs, int64_t maxDbs,
                        int64_t totalUsers, int64_t maxUsers, int64_t totalStreams, int64_t maxStreams,
                        int64_t totalConns, int64_t maxConns, int8_t accessState) {
  char sql[1024] = {0};
  sprintf(sql,
          "insert into %s.acct_%s using %s.acct tags('%s') values(now"
          ", %ld, %ld "
          ", %ld, %ld"
          ", %ld, %ld"
          ", %ld, %ld"
          ", %ld, %ld"
          ", %ld, %ld"
          ", %ld, %ld"
          ", %ld, %ld"
          ", %ld, %ld"
          ", %ld, %ld"
          ", %d)",
          tsMonitorDbName, acctId, tsMonitorDbName, acctId, currentPointsPerSecond, maxPointsPerSecond, totalTimeSeries,
          maxTimeSeries, totalStorage, maxStorage, totalQueryTime, maxQueryTime, totalInbound, maxInbound,
          totalOutbound, maxOutbound, totalDbs, maxDbs, totalUsers, maxUsers, totalStreams, maxStreams, totalConns,
          maxConns, accessState);

  monitorTrace("monitor:%p, save account info, sql %s", monitor->conn, sql);
  taos_query_a(monitor->conn, sql, dnodeMontiorInsertAcctCallback, "account");
}
