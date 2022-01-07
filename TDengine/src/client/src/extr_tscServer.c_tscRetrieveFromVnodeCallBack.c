
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_9__ ;
typedef struct TYPE_50__ TYPE_8__ ;
typedef struct TYPE_49__ TYPE_7__ ;
typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_5__ ;
typedef struct TYPE_46__ TYPE_4__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_38__ ;
typedef struct TYPE_43__ TYPE_31__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_22__ ;
typedef struct TYPE_40__ TYPE_20__ ;
typedef struct TYPE_39__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_42__ {TYPE_31__* pSchema; } ;
typedef TYPE_2__ tOrderDescriptor ;
typedef size_t int32_t ;
struct TYPE_51__ {int pMetricMeta; } ;
struct TYPE_50__ {size_t vnodeIdx; TYPE_38__* pState; int pFinalColModel; TYPE_20__** pExtMemBuffer; TYPE_22__* localBuffer; int queryMutex; TYPE_2__* pOrderDescriptor; TYPE_6__* pParentSqlObj; } ;
struct TYPE_39__ {int orderType; } ;
struct TYPE_49__ {size_t vnodeIdx; int command; TYPE_1__ groupbyExpr; } ;
struct TYPE_47__ {scalar_t__ code; int numOfRows; scalar_t__ row; int precision; int data; } ;
struct TYPE_48__ {int param; int (* fp ) (int ,TYPE_6__*,int ) ;TYPE_5__ res; TYPE_7__ cmd; int rspSem; int emptyRspSem; } ;
struct TYPE_46__ {int vnode; int ip; } ;
struct TYPE_45__ {size_t index; TYPE_4__* vpeerDesc; } ;
struct TYPE_44__ {scalar_t__ code; int numOfTotal; int numOfCompleted; int numOfRetrievedRows; } ;
struct TYPE_43__ {int maxCapacity; } ;
struct TYPE_41__ {int numOfElems; int data; } ;
struct TYPE_40__ {int numOfElemsPerPage; scalar_t__ numOfAllElems; } ;
typedef int TAOS_RES ;
typedef TYPE_3__ SVnodeSidList ;
typedef TYPE_4__ SVPeerDesc ;
typedef int SSrcColumnInfo ;
typedef TYPE_5__ SSqlRes ;
typedef TYPE_6__ SSqlObj ;
typedef TYPE_7__ SSqlCmd ;
typedef TYPE_8__ SRetrieveSupport ;
typedef TYPE_9__ SMeterMetaInfo ;


 int TSDB_CODE_CLI_NO_DISKSPACE ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_SQL_RETRIEVE_METRIC ;
 int assert (int) ;
 int atomic_add_fetch_32 (int *,int) ;
 int atomic_add_fetch_64 (int *,int) ;
 int free (TYPE_38__*) ;
 int printf (char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 size_t saveToBuffer (TYPE_20__*,TYPE_2__*,TYPE_22__*,int ,int,int ) ;
 int stub1 (int ,TYPE_6__*,int ) ;
 int tColModelCompact (TYPE_31__*,TYPE_22__*,int ) ;
 int tColModelDisplayEx (TYPE_31__*,int ,int,int,int *) ;
 int taos_fetch_rows_a (int *,void (*) (void*,int *,int),void*) ;
 scalar_t__ tsAvailTmpDirGB ;
 scalar_t__ tsMinimalTmpDirGB ;
 scalar_t__ tsTotalTmpDirGB ;
 void tscAbortFurtherRetryRetrieval (TYPE_8__*,int *,int ) ;
 int tscClearInterpInfo (TYPE_7__*) ;
 int tscCreateLocalReducer (TYPE_20__**,int ,TYPE_2__*,int ,TYPE_7__*,TYPE_5__*) ;
 int tscError (char*,TYPE_6__*,TYPE_6__*,scalar_t__,scalar_t__) ;
 size_t tscFlushTmpBuffer (TYPE_20__*,TYPE_2__*,TYPE_22__*,int ) ;
 void tscFreeSubSqlObj (TYPE_8__*,TYPE_6__*) ;
 TYPE_9__* tscGetMeterMetaInfo (TYPE_7__*,int ) ;
 int tscGetSrcColumnInfo (int *,TYPE_7__*) ;
 TYPE_3__* tscGetVnodeSidList (int ,size_t) ;
 void tscHandleSubRetrievalError (TYPE_8__*,TYPE_6__*,int) ;
 int tscQueueAsyncRes (TYPE_6__*) ;
 int tscTrace (char*,TYPE_6__*,...) ;
 int tsem_post (int *) ;
 int tsem_wait (int *) ;

void tscRetrieveFromVnodeCallBack(void *param, TAOS_RES *tres, int numOfRows) {
  SRetrieveSupport *trsupport = (SRetrieveSupport *)param;
  int32_t idx = trsupport->vnodeIdx;
  SSqlObj * pPObj = trsupport->pParentSqlObj;
  tOrderDescriptor *pDesc = trsupport->pOrderDescriptor;

  SSqlObj *pSql = (SSqlObj *)tres;
  if (pSql == ((void*)0)) {

    tscTrace("%p subquery has been released, idx:%d, abort", pPObj, idx);
    return;
  }


  pthread_mutex_lock(&trsupport->queryMutex);

  if (numOfRows < 0 || trsupport->pState->code < 0 || pPObj->res.code != TSDB_CODE_SUCCESS) {
    return tscHandleSubRetrievalError(trsupport, pSql, numOfRows);
  }

  SSqlRes * pRes = &pSql->res;
  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  SVnodeSidList *vnodeInfo = tscGetVnodeSidList(pMeterMetaInfo->pMetricMeta, idx);
  SVPeerDesc * pSvd = &vnodeInfo->vpeerDesc[vnodeInfo->index];

  if (numOfRows > 0) {
    assert(pRes->numOfRows == numOfRows);
    atomic_add_fetch_64(&trsupport->pState->numOfRetrievedRows, numOfRows);

    tscTrace("%p sub:%p retrieve numOfRows:%d totalNumOfRows:%d from ip:%u,vid:%d,orderOfSub:%d", pPObj, pSql,
             pRes->numOfRows, trsupport->pState->numOfRetrievedRows, pSvd->ip, pSvd->vnode, idx);







    if (tsTotalTmpDirGB != 0 && tsAvailTmpDirGB < tsMinimalTmpDirGB) {
      tscError("%p sub:%p client disk space remain %.3f GB, need at least %.3f GB, stop query", pPObj, pSql,
               tsAvailTmpDirGB, tsMinimalTmpDirGB);
      tscAbortFurtherRetryRetrieval(trsupport, tres, TSDB_CODE_CLI_NO_DISKSPACE);
      return;
    }
    int32_t ret = saveToBuffer(trsupport->pExtMemBuffer[idx], pDesc, trsupport->localBuffer, pRes->data,
                               pRes->numOfRows, pCmd->groupbyExpr.orderType);
    if (ret < 0) {

      tscAbortFurtherRetryRetrieval(trsupport, tres, TSDB_CODE_CLI_NO_DISKSPACE);
    } else {
      pthread_mutex_unlock(&trsupport->queryMutex);
      taos_fetch_rows_a(tres, tscRetrieveFromVnodeCallBack, param);
    }

  } else {

    uint32_t numOfRowsFromVnode =
        trsupport->pExtMemBuffer[pCmd->vnodeIdx]->numOfAllElems + trsupport->localBuffer->numOfElems;
    tscTrace("%p sub:%p all data retrieved from ip:%u,vid:%d, numOfRows:%d, orderOfSub:%d", pPObj, pSql, pSvd->ip,
             pSvd->vnode, numOfRowsFromVnode, idx);

    tColModelCompact(pDesc->pSchema, trsupport->localBuffer, pDesc->pSchema->maxCapacity);
    if (tsTotalTmpDirGB != 0 && tsAvailTmpDirGB < tsMinimalTmpDirGB) {
      tscError("%p sub:%p client disk space remain %.3f GB, need at least %.3f GB, stop query", pPObj, pSql,
               tsAvailTmpDirGB, tsMinimalTmpDirGB);
      tscAbortFurtherRetryRetrieval(trsupport, tres, TSDB_CODE_CLI_NO_DISKSPACE);
      return;
    }



    int32_t ret =
        tscFlushTmpBuffer(trsupport->pExtMemBuffer[idx], pDesc, trsupport->localBuffer, pCmd->groupbyExpr.orderType);
    if (ret != 0) {

      return tscAbortFurtherRetryRetrieval(trsupport, tres, TSDB_CODE_CLI_NO_DISKSPACE);
    }

    if (atomic_add_fetch_32(&trsupport->pState->numOfCompleted, 1) < trsupport->pState->numOfTotal) {
      return tscFreeSubSqlObj(trsupport, pSql);
    }


    pDesc->pSchema->maxCapacity = trsupport->pExtMemBuffer[idx]->numOfElemsPerPage;

    tscTrace("%p retrieve from %d vnodes completed.final NumOfRows:%d,start to build loser tree", pPObj,
             trsupport->pState->numOfTotal, trsupport->pState->numOfCompleted);

    tscClearInterpInfo(&pPObj->cmd);
    tscCreateLocalReducer(trsupport->pExtMemBuffer, trsupport->pState->numOfTotal, pDesc, trsupport->pFinalColModel,
                          &pPObj->cmd, &pPObj->res);
    tscTrace("%p build loser tree completed", pPObj);

    pPObj->res.precision = pSql->res.precision;
    pPObj->res.numOfRows = 0;
    pPObj->res.row = 0;


    free(trsupport->pState);
    tscFreeSubSqlObj(trsupport, pSql);

    if (pPObj->fp == ((void*)0)) {
      tsem_wait(&pPObj->emptyRspSem);
      tsem_wait(&pPObj->emptyRspSem);

      tsem_post(&pPObj->rspSem);
    } else {

      pPObj->cmd.command = TSDB_SQL_RETRIEVE_METRIC;
      if (pPObj->res.code == TSDB_CODE_SUCCESS) {
        (*pPObj->fp)(pPObj->param, pPObj, 0);
      } else {
        tscQueueAsyncRes(pPObj);
      }
    }
  }
}
