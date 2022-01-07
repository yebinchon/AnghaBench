
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ command; } ;
struct TYPE_5__ {scalar_t__ qhandle; int code; } ;
struct TYPE_6__ {void (* fp ) () ;int fetchFp; TYPE_1__ res; TYPE_3__ cmd; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;


 scalar_t__ TSDB_SQL_FETCH ;
 scalar_t__ TSDB_SQL_LOCAL ;
 scalar_t__ TSDB_SQL_MGMT ;
 scalar_t__ TSDB_SQL_RETRIEVE ;
 scalar_t__ TSDB_SQL_RETRIEVE_METRIC ;
 int tscError (char*) ;
 int tscProcessSql (TYPE_2__*) ;
 int tscQueueAsyncError (int ,void*) ;

__attribute__((used)) static void tscProcessAsyncRetrieveImpl(void *param, TAOS_RES *tres, int numOfRows, void (*fp)()) {
  SSqlObj *pSql = (SSqlObj *)tres;
  if (pSql == ((void*)0)) {
    tscError("sql object is NULL");
    tscQueueAsyncError(pSql->fetchFp, param);
    return;
  }

  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  if (pRes->qhandle == 0 || numOfRows != 0) {
    if (pRes->qhandle == 0) {
      tscError("qhandle is NULL");
    } else {
      pRes->code = numOfRows;
    }

    tscQueueAsyncError(pSql->fetchFp, param);
    return;
  }

  pSql->fp = fp;
  if (pCmd->command != TSDB_SQL_RETRIEVE_METRIC && pCmd->command < TSDB_SQL_LOCAL) {
    pCmd->command = (pCmd->command > TSDB_SQL_MGMT) ? TSDB_SQL_RETRIEVE : TSDB_SQL_FETCH;
  }
  tscProcessSql(pSql);
}
