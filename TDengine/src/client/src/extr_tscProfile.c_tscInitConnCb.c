
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_RES ;


 int free (char*) ;
 int taos_close (int *) ;
 int tscError (char*,int *,int) ;
 int tscSaveSlowQueryFp (char*,int *) ;
 int * tscSlowQueryConn ;
 int tscSlowQueryConnInitialized ;
 int tscTrace (char*,int *,int) ;

void tscInitConnCb(void *param, TAOS_RES *result, int code) {
  char *sql = param;
  if (code < 0) {
    tscError("taos:%p, slow query connect failed, code:%d", tscSlowQueryConn, code);
    taos_close(tscSlowQueryConn);
    tscSlowQueryConn = ((void*)0);
    tscSlowQueryConnInitialized = 0;
    free(sql);
  } else {
    tscTrace("taos:%p, slow query connect success, code:%d", tscSlowQueryConn, code);
    tscSlowQueryConnInitialized = 1;
    tscSaveSlowQueryFp(sql, ((void*)0));
  }
}
