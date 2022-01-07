
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_26__ {int name; TYPE_1__* pMeterMeta; } ;
struct TYPE_25__ {scalar_t__ vnodeIdx; TYPE_4__* pParentSqlObj; } ;
struct TYPE_24__ {int type; scalar_t__ vnodeIdx; int command; } ;
struct TYPE_22__ {int code; } ;
struct TYPE_23__ {void* fp; int * pStream; TYPE_5__ cmd; struct TYPE_23__* signature; int * param; int rspSem; int retry; int thandle; TYPE_3__ res; TYPE_2__* pTscObj; } ;
struct TYPE_21__ {int db; int acctId; } ;
struct TYPE_20__ {scalar_t__ numOfTags; } ;
typedef int TAOS_RES ;
typedef TYPE_2__ STscObj ;
typedef TYPE_3__ SSqlRes ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SRetrieveSupport ;
typedef TYPE_7__ SMeterMetaInfo ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_QUERY_TYPE_STABLE_SUBQUERY ;
 scalar_t__ UTIL_METER_IS_METRIC (TYPE_7__*) ;
 int abs (int) ;
 int assert (int) ;
 int tsParseSql (TYPE_4__*,int ,int ,int) ;
 int tscDoQuery (TYPE_4__*) ;
 int tscError (char*,TYPE_4__*) ;
 int tscGetMeterMeta (TYPE_4__*,int ,int ) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 int tscGetMetricMeta (TYPE_4__*) ;
 int tscIncStreamExecutionCount (int *) ;
 int tscQueueAsyncRes (TYPE_4__*) ;
 int tscSendMsgToServer (TYPE_4__*) ;
 int tscTansformSQLFunctionForMetricQuery (TYPE_5__*) ;
 int tscTrace (char*,TYPE_4__*,...) ;
 int tsem_post (int *) ;

void tscMeterMetaCallBack(void *param, TAOS_RES *res, int code) {
  SSqlObj *pSql = (SSqlObj *)param;
  if (pSql == ((void*)0) || pSql->signature != pSql) return;

  STscObj *pObj = pSql->pTscObj;
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  if (pSql->fp == ((void*)0)) {
    tscError("%p callBack is NULL!!!", pSql);
    return;
  }

  if (pSql->fp == (void *)1) {
    pSql->fp = ((void*)0);

    if (code != 0) {
      code = abs(code);
      pRes->code = code;
      tscTrace("%p failed to renew meterMeta", pSql);
      tsem_post(&pSql->rspSem);
    } else {
      tscTrace("%p renew meterMeta successfully, command:%d, code:%d, thandle:%p, retry:%d",
          pSql, pSql->cmd.command, pSql->res.code, pSql->thandle, pSql->retry);

      assert(tscGetMeterMetaInfo(&pSql->cmd, 0)->pMeterMeta == ((void*)0));
      tscGetMeterMeta(pSql, tscGetMeterMetaInfo(&pSql->cmd, 0)->name, 0);

      code = tscSendMsgToServer(pSql);
      if (code != 0) {
        pRes->code = code;
        tsem_post(&pSql->rspSem);
      }
    }

    return;
  }

  if (code != 0) {
    pRes->code = (uint8_t)abs(code);
    tscQueueAsyncRes(pSql);
    return;
  }

  if (pSql->pStream == ((void*)0)) {

    if ((pSql->cmd.type & TSDB_QUERY_TYPE_STABLE_SUBQUERY) == TSDB_QUERY_TYPE_STABLE_SUBQUERY) {
      SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
      assert(pMeterMetaInfo->pMeterMeta->numOfTags != 0 && pCmd->vnodeIdx >= 0 && pSql->param != ((void*)0));

      SRetrieveSupport *trs = (SRetrieveSupport *)pSql->param;
      SSqlObj * pParObj = trs->pParentSqlObj;
      assert(pParObj->signature == pParObj && trs->vnodeIdx == pCmd->vnodeIdx &&
          pMeterMetaInfo->pMeterMeta->numOfTags != 0);

      tscTrace("%p get metricMeta during metric query successfully", pSql);

      code = tscGetMeterMeta(pSql, tscGetMeterMetaInfo(&pSql->cmd, 0)->name, 0);
      pRes->code = code;

      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;

      code = tscGetMetricMeta(pSql);
      pRes->code = code;

      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;
    } else {
      code = tsParseSql(pSql, pObj->acctId, pObj->db, 0);
      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;
    }

  } else {
    SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
    code = tscGetMeterMeta(pSql, pMeterMetaInfo->name, 0);
    pRes->code = code;

    if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;

    pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
    if (code == TSDB_CODE_SUCCESS && UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
      code = tscGetMetricMeta(pSql);
      pRes->code = code;

      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;
    }
  }

  if (code != 0) {
    tscQueueAsyncRes(pSql);
    return;
  }

  if (pSql->pStream) {
    tscTrace("%p stream:%p meta is updated, start new query, command:%d", pSql, pSql->pStream, pSql->cmd.command);





    tscTansformSQLFunctionForMetricQuery(&pSql->cmd);
    tscIncStreamExecutionCount(pSql->pStream);
  } else {
    tscTrace("%p get meterMeta/metricMeta successfully", pSql);
  }

  tscDoQuery(pSql);
}
