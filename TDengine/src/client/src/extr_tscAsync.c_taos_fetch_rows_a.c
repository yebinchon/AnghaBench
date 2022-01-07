
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ command; } ;
struct TYPE_6__ {scalar_t__ qhandle; } ;
struct TYPE_7__ {void (* fetchFp ) (void*,int *,int) ;void* param; int fp; TYPE_3__ cmd; TYPE_1__ res; struct TYPE_7__* signature; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;


 int TSDB_CODE_DISCONNECTED ;
 scalar_t__ TSDB_SQL_FETCH ;
 scalar_t__ TSDB_SQL_LOCAL ;
 scalar_t__ TSDB_SQL_MGMT ;
 scalar_t__ TSDB_SQL_RETRIEVE ;
 scalar_t__ TSDB_SQL_RETRIEVE_METRIC ;
 int globalCode ;
 int tscError (char*) ;
 int tscProcessAsyncFetchRowsProxy ;
 int tscProcessSql (TYPE_2__*) ;
 int tscQueueAsyncError (void (*) (void*,int *,int),void*) ;
 int tscResetForNextRetrieve (TYPE_1__*) ;

void taos_fetch_rows_a(TAOS_RES *taosa, void (*fp)(void *, TAOS_RES *, int), void *param) {
  SSqlObj *pSql = (SSqlObj *)taosa;
  if (pSql == ((void*)0) || pSql->signature != pSql) {
    tscError("sql object is NULL");
    globalCode = TSDB_CODE_DISCONNECTED;
    tscQueueAsyncError(fp, param);
    return;
  }

  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;

  if (pRes->qhandle == 0) {
    tscError("qhandle is NULL");
    tscQueueAsyncError(fp, param);
    return;
  }


  pSql->fetchFp = fp;
  pSql->fp = tscProcessAsyncFetchRowsProxy;

  pSql->param = param;
  tscResetForNextRetrieve(pRes);

  if (pCmd->command != TSDB_SQL_RETRIEVE_METRIC && pCmd->command < TSDB_SQL_LOCAL) {
    pCmd->command = (pCmd->command > TSDB_SQL_MGMT) ? TSDB_SQL_RETRIEVE : TSDB_SQL_FETCH;
  }

  tscProcessSql(pSql);
}
