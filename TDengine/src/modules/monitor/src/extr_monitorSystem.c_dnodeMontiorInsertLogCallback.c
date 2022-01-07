
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
typedef int TAOS_RES ;


 TYPE_1__* monitor ;
 int monitorError (char*,int ,int) ;
 int monitorTrace (char*,int ,int) ;

void dnodeMontiorInsertLogCallback(void *param, TAOS_RES *result, int code) {
  if (code < 0) {
    monitorError("monitor:%p, save log failed, code:%d", monitor->conn, code);
  } else if (code == 0) {
    monitorError("monitor:%p, save log failed, affect rows:%d", monitor->conn, code);
  } else {
    monitorTrace("monitor:%p, save log info success, code:%d", monitor->conn, code);
  }
}
