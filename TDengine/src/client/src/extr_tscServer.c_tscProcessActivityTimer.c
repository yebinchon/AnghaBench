
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int command; } ;
struct TYPE_12__ {void* pTimer; struct TYPE_12__* pHb; struct TYPE_12__* thandle; struct TYPE_12__* signature; struct TYPE_12__* pTscObj; struct TYPE_12__* param; TYPE_9__ cmd; int fp; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_1__ SSqlObj ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_DEFAULT_PAYLOAD_SIZE ;
 int TSDB_SQL_HB ;
 scalar_t__ calloc (int,int) ;
 int taosCloseRpcConn (TYPE_1__*) ;
 int tfree (TYPE_1__*) ;
 scalar_t__ tscAllocPayload (TYPE_9__*,int ) ;
 int tscCloseTscObj (TYPE_1__*) ;
 int tscFreeSqlObj (TYPE_1__*) ;
 int tscProcessHeartBeatRsp ;
 int tscProcessSql (TYPE_1__*) ;
 scalar_t__ tscShouldFreeHeatBeat (TYPE_1__*) ;
 int tscTrace (char*,TYPE_1__*,TYPE_1__*) ;

void tscProcessActivityTimer(void *handle, void *tmrId) {
  STscObj *pObj = (STscObj *)handle;

  if (pObj == ((void*)0)) return;
  if (pObj->signature != pObj) return;
  if (pObj->pTimer != tmrId) return;

  if (pObj->pHb == ((void*)0)) {
    SSqlObj *pSql = (SSqlObj *)calloc(1, sizeof(SSqlObj));
    if (((void*)0) == pSql) return;

    pSql->fp = tscProcessHeartBeatRsp;
    pSql->cmd.command = TSDB_SQL_HB;
    if (TSDB_CODE_SUCCESS != tscAllocPayload(&(pSql->cmd), TSDB_DEFAULT_PAYLOAD_SIZE)) {
      tfree(pSql);
      return;
    }

    pSql->param = pObj;
    pSql->pTscObj = pObj;
    pSql->signature = pSql;
    pObj->pHb = pSql;
    tscTrace("%p pHb is allocated, pObj:%p", pObj->pHb, pObj);
  }

  if (tscShouldFreeHeatBeat(pObj->pHb)) {
    tscTrace("%p free HB object and release connection, pConn:%p", pObj, pObj->pHb->thandle);
    taosCloseRpcConn(pObj->pHb->thandle);

    tscFreeSqlObj(pObj->pHb);
    tscCloseTscObj(pObj);
    return;
  }

  tscProcessSql(pObj->pHb);
}
