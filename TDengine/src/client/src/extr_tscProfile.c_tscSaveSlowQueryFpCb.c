
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_RES ;


 int tscError (char*,int) ;
 int tscTrace (char*,int) ;

void tscSaveSlowQueryFpCb(void *param, TAOS_RES *result, int code) {
  if (code < 0) {
    tscError("failed to save slow query, code:%d", code);
  } else {
    tscTrace("success to save slow query, code:%d", code);
  }
}
