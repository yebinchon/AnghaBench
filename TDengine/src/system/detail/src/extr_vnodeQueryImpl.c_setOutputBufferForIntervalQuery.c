
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ numOfElems; } ;
typedef TYPE_3__ tFilePage ;
typedef size_t int32_t ;
struct TYPE_21__ {int numOfPages; size_t* pageList; int * resultInfo; } ;
struct TYPE_19__ {scalar_t__ numOfRowsPerPage; TYPE_2__* pCtx; TYPE_1__* pQuery; } ;
struct TYPE_20__ {TYPE_4__ runtimeEnv; } ;
struct TYPE_17__ {int * resultInfo; int aOutputBuf; } ;
struct TYPE_16__ {size_t numOfOutputCols; } ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SMeterQuerySupportObj ;
typedef TYPE_6__ SMeterQueryInfo ;


 TYPE_3__* addDataPageForMeterQueryInfo (TYPE_6__*,TYPE_5__*) ;
 int assert (int) ;
 TYPE_3__* getFilePage (TYPE_5__*,size_t) ;
 int getOutputResPos (TYPE_4__*,TYPE_3__*,scalar_t__,size_t) ;

void setOutputBufferForIntervalQuery(SMeterQuerySupportObj *pSupporter, SMeterQueryInfo *pMeterQueryInfo) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  tFilePage * pData = ((void*)0);


  if (pMeterQueryInfo->numOfPages == 0) {
    pData = addDataPageForMeterQueryInfo(pMeterQueryInfo, pSupporter);
  } else {
    int32_t lastPageId = pMeterQueryInfo->pageList[pMeterQueryInfo->numOfPages - 1];
    pData = getFilePage(pSupporter, lastPageId);

    if (pData->numOfElems >= pRuntimeEnv->numOfRowsPerPage) {
      pData = addDataPageForMeterQueryInfo(pMeterQueryInfo, pSupporter);
      assert(pData->numOfElems == 0);
    }
  }

  for (int32_t i = 0; i < pRuntimeEnv->pQuery->numOfOutputCols; ++i) {
    pRuntimeEnv->pCtx[i].aOutputBuf = getOutputResPos(pRuntimeEnv, pData, pData->numOfElems, i);
    pRuntimeEnv->pCtx[i].resultInfo = &pMeterQueryInfo->resultInfo[i];
  }
}
