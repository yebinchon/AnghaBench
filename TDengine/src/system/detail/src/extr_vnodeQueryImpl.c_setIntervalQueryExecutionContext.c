
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_26__ {int vnodeIndex; } ;
struct TYPE_25__ {TYPE_9__ cur; } ;
struct TYPE_24__ {scalar_t__ lastResRows; TYPE_9__ cur; int tag; scalar_t__ reverseFillRes; } ;
struct TYPE_21__ {TYPE_8__* pTSBuf; TYPE_2__* pCtx; TYPE_4__* pQuery; } ;
struct TYPE_23__ {TYPE_3__ runtimeEnv; int * pMeterSidExtInfo; int pSidSet; } ;
struct TYPE_22__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_19__ {int i64Key; } ;
struct TYPE_20__ {TYPE_1__ tag; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SMeterQuerySupportObj ;
typedef TYPE_6__ SMeterQueryInfo ;


 scalar_t__ IS_MASTER_SCAN (TYPE_3__*) ;
 int initCtxOutputBuf (TYPE_3__*) ;
 int setCtxOutputPointerForSupplementScan (TYPE_5__*,TYPE_6__*) ;
 int setOutputBufferForIntervalQuery (TYPE_5__*,TYPE_6__*) ;
 int tsBufGetElemStartPos (TYPE_8__*,int ,int ) ;
 int tsBufSetCursor (TYPE_8__*,TYPE_9__*) ;
 int vnodeSetTagValueInParam (int ,TYPE_3__*,int ) ;

void setIntervalQueryExecutionContext(SMeterQuerySupportObj *pSupporter, int32_t meterIdx,
                                      SMeterQueryInfo *pMeterQueryInfo) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  if (IS_MASTER_SCAN(pRuntimeEnv)) {
    setOutputBufferForIntervalQuery(pSupporter, pMeterQueryInfo);

    if (pMeterQueryInfo->lastResRows == 0) {
      initCtxOutputBuf(pRuntimeEnv);
    }


    for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {

    }

  } else {
    if (pMeterQueryInfo->reverseFillRes) {
      setCtxOutputPointerForSupplementScan(pSupporter, pMeterQueryInfo);
    } else {






      setOutputBufferForIntervalQuery(pSupporter, pMeterQueryInfo);
    }
  }

  vnodeSetTagValueInParam(pSupporter->pSidSet, pRuntimeEnv, pSupporter->pMeterSidExtInfo[meterIdx]);


  if (pSupporter->runtimeEnv.pTSBuf != ((void*)0)) {
    if (pMeterQueryInfo->cur.vnodeIndex == -1) {
      pMeterQueryInfo->tag = pRuntimeEnv->pCtx[0].tag.i64Key;

      tsBufGetElemStartPos(pSupporter->runtimeEnv.pTSBuf, 0, pMeterQueryInfo->tag);


      pMeterQueryInfo->cur = pSupporter->runtimeEnv.pTSBuf->cur;
    } else {
      tsBufSetCursor(pSupporter->runtimeEnv.pTSBuf, &pMeterQueryInfo->cur);
    }
  }
}
