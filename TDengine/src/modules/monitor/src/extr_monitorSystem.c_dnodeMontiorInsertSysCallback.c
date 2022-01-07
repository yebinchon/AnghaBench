
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sql; int conn; } ;
typedef int TAOS_RES ;


 TYPE_1__* monitor ;
 int monitorError (char*,int ,int,int ) ;
 int monitorTrace (char*,int ,int,int ) ;

void dnodeMontiorInsertSysCallback(void *param, TAOS_RES *result, int code) {
  if (code < 0) {
    monitorError("monitor:%p, save system info failed, code:%d %s", monitor->conn, code, monitor->sql);
  } else if (code == 0) {
    monitorError("monitor:%p, save system info failed, affect rows:%d %s", monitor->conn, code, monitor->sql);
  } else {
    monitorTrace("monitor:%p, save system info success, code:%d %s", monitor->conn, code, monitor->sql);
  }
}
