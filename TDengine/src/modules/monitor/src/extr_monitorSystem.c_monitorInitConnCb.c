
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * conn; int state; } ;
typedef int TAOS_RES ;


 int MONITOR_STATE_UN_INIT ;
 TYPE_1__* monitor ;
 int monitorError (char*,int *,int) ;
 int monitorInitDatabase () ;
 int monitorStartSystemRetry () ;
 int monitorTrace (char*,int *,int) ;
 int taos_close (int *) ;

void monitorInitConnCb(void *param, TAOS_RES *result, int code) {
  if (code < 0) {
    monitorError("monitor:%p, connect to database failed, code:%d", monitor->conn, code);
    taos_close(monitor->conn);
    monitor->conn = ((void*)0);
    monitor->state = MONITOR_STATE_UN_INIT;
    monitorStartSystemRetry();
    return;
  }

  monitorTrace("monitor:%p, connect to database success, code:%d", monitor->conn, code);
  monitorInitDatabase();
}
