
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_24__ {int meterId; int sid; int vnode; } ;
struct TYPE_20__ {scalar_t__ offset; } ;
struct TYPE_22__ {scalar_t__ pointsRead; scalar_t__ numOfFilterCols; scalar_t__ pointsOffset; scalar_t__ pointsToRead; int ekey; int lastKey; int over; TYPE_2__ limit; } ;
struct TYPE_23__ {int pointsReturned; int pointsRead; TYPE_1__* pMeterQuerySupporter; TYPE_6__* pObj; TYPE_4__ query; } ;
struct TYPE_21__ {int nextPos; } ;
struct TYPE_19__ {TYPE_3__ runtimeEnv; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SQInfo ;
typedef TYPE_6__ SMeterObj ;


 int QUERY_COMPLETED ;
 int QUERY_NO_DATA_TO_CHECK ;
 int QUERY_RESBUF_FULL ;
 scalar_t__ Q_STATUS_EQUAL (int ,int) ;
 int assert (int) ;
 int dTrace (char*,TYPE_5__*,int ,int ,int ,scalar_t__,int ,...) ;
 int doFinalizeResult (TYPE_3__*) ;
 int doRevisedResultsByLimit (TYPE_5__*) ;
 int doSkipResults (TYPE_3__*) ;
 scalar_t__ getNumOfResult (TYPE_3__*) ;
 scalar_t__ isQueryKilled (TYPE_4__*) ;
 int isTSCompQuery (TYPE_4__*) ;
 scalar_t__ loadRequiredBlockIntoMem (TYPE_3__*,int *) ;
 int moveDescOrderResultsToFront (TYPE_3__*) ;
 int resetCtxOutputBuf (TYPE_3__*) ;
 int vnodeScanAllData (TYPE_3__*) ;

__attribute__((used)) static void vnodeSingleMeterMultiOutputProcessor(SQInfo *pQInfo) {
  SQuery * pQuery = &pQInfo->query;
  SMeterObj *pMeterObj = pQInfo->pObj;

  SQueryRuntimeEnv *pRuntimeEnv = &pQInfo->pMeterQuerySupporter->runtimeEnv;


  if (!isTSCompQuery(pQuery)) {
    resetCtxOutputBuf(pRuntimeEnv);
  }

  while (1) {
    vnodeScanAllData(pRuntimeEnv);
    doFinalizeResult(pRuntimeEnv);

    if (isQueryKilled(pQuery)) {
      return;
    }

    pQuery->pointsRead = getNumOfResult(pRuntimeEnv);
    if (pQuery->limit.offset > 0 && pQuery->numOfFilterCols > 0 && pQuery->pointsRead > 0) {
      doSkipResults(pRuntimeEnv);
    }





    if (pQuery->pointsRead > 0 || Q_STATUS_EQUAL(pQuery->over, QUERY_COMPLETED | QUERY_NO_DATA_TO_CHECK)) {
      break;
    }

    TSKEY nextTimestamp = loadRequiredBlockIntoMem(pRuntimeEnv, &pRuntimeEnv->nextPos);
    assert(nextTimestamp > 0 || ((nextTimestamp < 0) && Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK)));

    dTrace("QInfo:%p vid:%d sid:%d id:%s, skip current result, offset:%lld, next qrange:%lld-%lld", pQInfo,
           pMeterObj->vnode, pMeterObj->sid, pMeterObj->meterId, pQuery->limit.offset, pQuery->lastKey, pQuery->ekey);

    resetCtxOutputBuf(pRuntimeEnv);
  }

  doRevisedResultsByLimit(pQInfo);
  moveDescOrderResultsToFront(pRuntimeEnv);

  pQInfo->pointsRead += pQuery->pointsRead;

  if (Q_STATUS_EQUAL(pQuery->over, QUERY_RESBUF_FULL)) {
    TSKEY nextTimestamp = loadRequiredBlockIntoMem(pRuntimeEnv, &pRuntimeEnv->nextPos);
    assert(nextTimestamp > 0 || ((nextTimestamp < 0) && Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK)));

    dTrace("QInfo:%p vid:%d sid:%d id:%s, query abort due to buffer limitation, next qrange:%lld-%lld", pQInfo,
           pMeterObj->vnode, pMeterObj->sid, pMeterObj->meterId, pQuery->lastKey, pQuery->ekey);
  }

  dTrace("QInfo:%p vid:%d sid:%d id:%s, %d points returned, totalRead:%d totalReturn:%d", pQInfo, pMeterObj->vnode,
         pMeterObj->sid, pMeterObj->meterId, pQuery->pointsRead, pQInfo->pointsRead, pQInfo->pointsReturned);

  pQuery->pointsOffset = pQuery->pointsToRead;
  if (!isTSCompQuery(pQuery)) {
    assert(pQuery->pointsRead <= pQuery->pointsToRead);
  }
}
