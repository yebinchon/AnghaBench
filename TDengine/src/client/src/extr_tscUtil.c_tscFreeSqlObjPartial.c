
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_14__ {scalar_t__ command; } ;
struct TYPE_12__ {int pColumnIndex; int pGroupRec; scalar_t__ numOfGroups; scalar_t__ numOfTotal; scalar_t__ numOfRows; scalar_t__ row; int pRsp; } ;
struct TYPE_13__ {TYPE_2__ res; scalar_t__ numOfSubs; int pSubs; int sqlstr; TYPE_1__* pTscObj; TYPE_4__ cmd; struct TYPE_13__* signature; } ;
struct TYPE_11__ {int mutex; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlCmd ;


 scalar_t__ TSDB_SQL_INSERT ;
 scalar_t__ TSDB_SQL_METRIC_JOIN_RETRIEVE ;
 scalar_t__ TSDB_SQL_RETRIEVE_EMPTY_RESULT ;
 scalar_t__ TSDB_SQL_RETRIEVE_METRIC ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tfree (int ) ;
 int tscDestroyLocalReducer (TYPE_3__*) ;
 int tscDestroyResPointerInfo (TYPE_2__*) ;
 int tscFreeSqlCmdData (TYPE_4__*) ;
 int tscRemoveAllMeterMetaInfo (TYPE_4__*,int) ;
 int tscRemoveFromSqlList (TYPE_3__*) ;

void tscFreeSqlObjPartial(SSqlObj* pSql) {
  if (pSql == ((void*)0) || pSql->signature != pSql) {
    return;
  }

  SSqlCmd* pCmd = &pSql->cmd;
  SSqlRes* pRes = &pSql->res;

  STscObj* pObj = pSql->pTscObj;

  int32_t cmd = pCmd->command;
  if (cmd < TSDB_SQL_INSERT || cmd == TSDB_SQL_RETRIEVE_METRIC || cmd == TSDB_SQL_RETRIEVE_EMPTY_RESULT ||
      cmd == TSDB_SQL_METRIC_JOIN_RETRIEVE) {
    tscRemoveFromSqlList(pSql);
  }

  pCmd->command = -1;


  pthread_mutex_lock(&pObj->mutex);
  tfree(pSql->sqlstr);
  pthread_mutex_unlock(&pObj->mutex);

  tfree(pSql->res.pRsp);
  pSql->res.row = 0;
  pSql->res.numOfRows = 0;
  pSql->res.numOfTotal = 0;

  pSql->res.numOfGroups = 0;
  tfree(pSql->res.pGroupRec);

  tscDestroyLocalReducer(pSql);

  tfree(pSql->pSubs);
  pSql->numOfSubs = 0;
  tscDestroyResPointerInfo(pRes);
  tfree(pSql->res.pColumnIndex);

  tscFreeSqlCmdData(pCmd);
  tscRemoveAllMeterMetaInfo(pCmd, 0);
}
