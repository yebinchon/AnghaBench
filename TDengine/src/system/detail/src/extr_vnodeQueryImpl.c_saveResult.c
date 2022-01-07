
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_18__ ;


struct TYPE_30__ {scalar_t__ numOfElems; } ;
typedef TYPE_2__ tFilePage ;
typedef int tColModel ;
typedef size_t int32_t ;
struct TYPE_36__ {int meterId; int sid; int vnode; } ;
struct TYPE_35__ {scalar_t__ reverseIndex; scalar_t__ numOfRes; int lastResRows; int reverseFillRes; size_t* pageList; int numOfPages; int * resultInfo; } ;
struct TYPE_32__ {scalar_t__ numOfRowsPerPage; TYPE_8__* pMeterObj; TYPE_1__* pCtx; TYPE_5__* pQuery; } ;
struct TYPE_34__ {TYPE_4__ runtimeEnv; } ;
struct TYPE_33__ {size_t numOfOutputCols; } ;
struct TYPE_31__ {int bytes; void* type; } ;
struct TYPE_29__ {scalar_t__ nStartQueryTimestamp; scalar_t__ aOutputBuf; } ;
struct TYPE_28__ {int numOfElems; int data; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_3__ SSchema ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SQuery ;
typedef TYPE_6__ SMeterQuerySupportObj ;
typedef TYPE_7__ SMeterQueryInfo ;
typedef TYPE_8__ SMeterObj ;


 int GET_QINFO_ADDR (TYPE_5__*) ;
 scalar_t__ IS_MASTER_SCAN (TYPE_4__*) ;
 scalar_t__ IS_SUPPLEMENT_SCAN (TYPE_4__*) ;
 void* TSDB_DATA_TYPE_BIGINT ;
 int TSDB_MAX_COLUMNS ;
 int UNUSED (TYPE_3__*) ;
 int assert (int) ;
 TYPE_2__* getFilePage (TYPE_6__*,size_t) ;
 scalar_t__ getOutputResPos (TYPE_4__*,TYPE_2__*,scalar_t__,int ) ;
 int initCtxOutputBuf (TYPE_4__*) ;
 TYPE_18__* outputPage ;
 int qTrace (char*,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int resetResultInfo (int *) ;
 int setCtxOutputPointerForSupplementScan (TYPE_6__*,TYPE_7__*) ;
 int setOutputBufferForIntervalQuery (TYPE_6__*,TYPE_7__*) ;
 int * tColModelCreate (TYPE_3__*,size_t,scalar_t__) ;
 int tColModelDisplay (int *,int ,int ,scalar_t__) ;
 int validateResultBuf (TYPE_6__*,TYPE_7__*) ;

void saveResult(SMeterQuerySupportObj *pSupporter, SMeterQueryInfo *pMeterQueryInfo, int32_t numOfResult) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;


  if (numOfResult <= 0) {
    if (IS_MASTER_SCAN(pRuntimeEnv)) {
      return;
    } else {
      TSKEY ts = *(TSKEY *)pRuntimeEnv->pCtx[0].aOutputBuf;
      if (ts == pRuntimeEnv->pCtx[0].nStartQueryTimestamp && pMeterQueryInfo->reverseIndex > 0) {
        assert(pMeterQueryInfo->numOfRes >= 0 && pMeterQueryInfo->reverseIndex > 0 &&
               pMeterQueryInfo->reverseIndex <= pMeterQueryInfo->numOfRes);


        pMeterQueryInfo->reverseIndex -= 1;
        setCtxOutputPointerForSupplementScan(pSupporter, pMeterQueryInfo);
      }

      return;
    }
  }

  assert(pMeterQueryInfo->lastResRows == 1);
  numOfResult = 1;
  pMeterQueryInfo->lastResRows = 0;

  if (IS_SUPPLEMENT_SCAN(pRuntimeEnv) && pMeterQueryInfo->reverseFillRes == 1) {
    assert(pMeterQueryInfo->numOfRes > 0 && pMeterQueryInfo->reverseIndex > 0 &&
           pMeterQueryInfo->reverseIndex <= pMeterQueryInfo->numOfRes);

    pMeterQueryInfo->reverseIndex -= 1;
    setCtxOutputPointerForSupplementScan(pSupporter, pMeterQueryInfo);
  } else {
    int32_t pageId = pMeterQueryInfo->pageList[pMeterQueryInfo->numOfPages - 1];
    tFilePage *pData = getFilePage(pSupporter, pageId);


    TSKEY ts = *(TSKEY *)getOutputResPos(pRuntimeEnv, pData, pData->numOfElems, 0);

    SMeterObj *pMeterObj = pRuntimeEnv->pMeterObj;
    qTrace("QInfo:%p vid:%d sid:%d id:%s, save results, ts:%lld, total:%d", GET_QINFO_ADDR(pQuery), pMeterObj->vnode,
           pMeterObj->sid, pMeterObj->meterId, ts, pMeterQueryInfo->numOfRes + 1);

    pData->numOfElems += numOfResult;
    pMeterQueryInfo->numOfRes += numOfResult;
    assert(pData->numOfElems <= pRuntimeEnv->numOfRowsPerPage);

    setOutputBufferForIntervalQuery(pSupporter, pMeterQueryInfo);

    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      resetResultInfo(&pMeterQueryInfo->resultInfo[i]);
    }

    validateResultBuf(pSupporter, pMeterQueryInfo);
    initCtxOutputBuf(pRuntimeEnv);
  }
}
