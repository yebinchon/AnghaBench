
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ ahandle; } ;
struct TYPE_13__ {int command; } ;
struct TYPE_11__ {int code; int numOfRows; } ;
struct TYPE_12__ {int param; int (* fp ) (int ,void*,int) ;int (* fetchFp ) (int ,void*,int) ;int * thandle; int vnode; int ip; int * pStream; TYPE_2__ res; TYPE_4__ cmd; TYPE_1__* pTscObj; } ;
struct TYPE_10__ {int user; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SSchedMsg ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_SQL_INSERT ;
 int assert (int ) ;
 int stub1 (int ,void*,int) ;
 int taosAddConnIntoCache (int ,int *,int ,int ,int ) ;
 int tscConnCache ;
 int tscFreeSqlObj (TYPE_3__*) ;
 scalar_t__* tscKeepConn ;
 int tscShouldFreeAsyncSqlObj (TYPE_3__*) ;
 int tscTrace (char*,TYPE_3__*) ;

void tscProcessAsyncRes(SSchedMsg *pMsg) {
  SSqlObj *pSql = (SSqlObj *)pMsg->ahandle;
  STscObj *pTscObj = pSql->pTscObj;
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  void *taosres = pSql;


  int cmd = pCmd->command;
  int code = pRes->code ? -pRes->code : pRes->numOfRows;

  if ((tscKeepConn[cmd] == 0 || (code != TSDB_CODE_SUCCESS && code != TSDB_CODE_ACTION_IN_PROGRESS)) &&
      pSql->pStream == ((void*)0)) {
    if (pSql->thandle) taosAddConnIntoCache(tscConnCache, pSql->thandle, pSql->ip, pSql->vnode, pTscObj->user);

    pSql->thandle = ((void*)0);
  }


  bool shouldFree = tscShouldFreeAsyncSqlObj(pSql);

  if (cmd == TSDB_SQL_INSERT) {
    assert(pSql->fp != ((void*)0));
    pSql->fp = pSql->fetchFp;
  }

  (*pSql->fp)(pSql->param, taosres, code);

  if (shouldFree) {
    tscFreeSqlObj(pSql);
    tscTrace("%p Async sql is automatically freed in async res", pSql);
  }
}
