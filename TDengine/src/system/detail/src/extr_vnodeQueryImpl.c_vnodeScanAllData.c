
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
typedef struct TYPE_19__ TYPE_16__ ;


typedef size_t int32_t ;
struct TYPE_26__ {TYPE_3__* resultInfo; } ;
struct TYPE_25__ {size_t numOfOutputCols; scalar_t__ skey; scalar_t__ lastKey; int pGroupbyExpr; TYPE_2__* pSelectExpr; int pos; int slot; int fileId; } ;
struct TYPE_24__ {size_t usedIndex; int * pCtx; TYPE_7__* pResult; int startPos; TYPE_6__* pQuery; } ;
struct TYPE_23__ {int complete; } ;
struct TYPE_22__ {int complete; } ;
struct TYPE_20__ {size_t functionId; } ;
struct TYPE_21__ {TYPE_1__ pBase; } ;
struct TYPE_19__ {int (* xNextStep ) (int *) ;} ;
typedef scalar_t__ TSKEY ;
typedef TYPE_4__ SResultInfo ;
typedef TYPE_5__ SQueryRuntimeEnv ;
typedef TYPE_6__ SQuery ;
typedef TYPE_7__ SOutputRes ;


 TYPE_4__* GET_RES_INFO (int *) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_6__*) ;
 int QUERY_NOT_COMPLETED ;
 int QUERY_NO_DATA_TO_CHECK ;
 TYPE_16__* aAggs ;
 int assert (int) ;
 int doScanAllDataBlocks (TYPE_5__*) ;
 int doSingleMeterSupplementScan (TYPE_5__*) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 scalar_t__ isQueryKilled (TYPE_6__*) ;
 scalar_t__ loadRequiredBlockIntoMem (TYPE_5__*,int *) ;
 int savePointPosition (int *,int ,int ,int ) ;
 int setGroupOutputBuffer (TYPE_5__*,TYPE_7__*) ;
 int setQueryStatus (TYPE_6__*,int ) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void vnodeScanAllData(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  setQueryStatus(pQuery, QUERY_NOT_COMPLETED);


  savePointPosition(&pRuntimeEnv->startPos, pQuery->fileId, pQuery->slot, pQuery->pos);

  while (1) {
    doScanAllDataBlocks(pRuntimeEnv);


    bool toContinue = 1;

    if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {

      for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
        SOutputRes *buf = &pRuntimeEnv->pResult[i];
        setGroupOutputBuffer(pRuntimeEnv, buf);

        for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
          aAggs[pQuery->pSelectExpr[j].pBase.functionId].xNextStep(&pRuntimeEnv->pCtx[j]);
          SResultInfo *pResInfo = GET_RES_INFO(&pRuntimeEnv->pCtx[j]);

          toContinue &= (pResInfo->complete);
        }
      }
    } else {
      for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
        aAggs[pQuery->pSelectExpr[j].pBase.functionId].xNextStep(&pRuntimeEnv->pCtx[j]);
        SResultInfo *pResInfo = GET_RES_INFO(&pRuntimeEnv->pCtx[j]);

        toContinue &= (pResInfo->complete);
      }
    }

    if (toContinue) {
      break;
    }


    TSKEY actKey = loadRequiredBlockIntoMem(pRuntimeEnv, &pRuntimeEnv->startPos);
    assert((QUERY_IS_ASC_QUERY(pQuery) && actKey >= pQuery->skey) ||
           (!QUERY_IS_ASC_QUERY(pQuery) && actKey <= pQuery->skey));

    setQueryStatus(pQuery, QUERY_NOT_COMPLETED);
    pQuery->lastKey = pQuery->skey;


    if (isQueryKilled(pQuery)) {
      setQueryStatus(pQuery, QUERY_NO_DATA_TO_CHECK);
      return;
    }
  }

  doSingleMeterSupplementScan(pRuntimeEnv);


  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
      SOutputRes *buf = &pRuntimeEnv->pResult[i];
      for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
        buf->resultInfo[j].complete = 0;
      }
    }
  } else {
    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      SResultInfo *pResInfo = GET_RES_INFO(&pRuntimeEnv->pCtx[i]);
      if (pResInfo != ((void*)0)) {
        pResInfo->complete = 0;
      }
    }
  }
}
