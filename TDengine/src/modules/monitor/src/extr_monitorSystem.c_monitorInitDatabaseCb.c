
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdIndex; int state; int sql; int conn; } ;
typedef int TAOS_RES ;


 scalar_t__ MONITOR_CMD_CREATE_TB_LOG ;
 int MONITOR_STATE_UN_INIT ;
 int TSDB_CODE_DB_ALREADY_EXIST ;
 int TSDB_CODE_TABLE_ALREADY_EXIST ;
 TYPE_1__* monitor ;
 int monitorError (char*,int ,int,int ) ;
 int monitorExecuteSQL ;
 int monitorInitDatabase () ;
 int monitorLPrint (char*,int ) ;
 int monitorSaveAcctLog ;
 int monitorSaveLog ;
 int monitorStartSystemRetry () ;
 int monitorTrace (char*,int ,int,int ) ;
 int taosLogAcctFp ;
 int taosLogFp ;
 int taosLogSqlFp ;
 int tsInternalIp ;
 int tsPrivateIp ;

void monitorInitDatabaseCb(void *param, TAOS_RES *result, int code) {
  if (-code == TSDB_CODE_TABLE_ALREADY_EXIST || -code == TSDB_CODE_DB_ALREADY_EXIST || code >= 0) {
    monitorTrace("monitor:%p, sql success, code:%d, %s", monitor->conn, code, monitor->sql);
    if (monitor->cmdIndex == MONITOR_CMD_CREATE_TB_LOG) {
      taosLogFp = monitorSaveLog;
      taosLogSqlFp = monitorExecuteSQL;




      monitorLPrint("dnode:%s is started", tsInternalIp);

    }
    monitor->cmdIndex++;
    monitorInitDatabase();
  } else {
    monitorError("monitor:%p, sql failed, code:%d, %s", monitor->conn, code, monitor->sql);
    monitor->state = MONITOR_STATE_UN_INIT;
    monitorStartSystemRetry();
  }
}
