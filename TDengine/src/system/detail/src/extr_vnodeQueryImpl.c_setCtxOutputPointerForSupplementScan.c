
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_19__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_28__ {size_t numOfElems; } ;
typedef TYPE_3__ tFilePage ;
typedef size_t int32_t ;
struct TYPE_34__ {size_t reverseIndex; size_t numOfPages; scalar_t__ lastResRows; int * pageList; } ;
struct TYPE_30__ {TYPE_10__* pMeterObj; TYPE_7__* pCtx; TYPE_6__* pQuery; } ;
struct TYPE_33__ {TYPE_5__ runtimeEnv; } ;
struct TYPE_32__ {scalar_t__ aOutputBuf; scalar_t__ currentStage; } ;
struct TYPE_31__ {size_t numOfOutputCols; TYPE_2__* pSelectExpr; } ;
struct TYPE_29__ {scalar_t__ complete; } ;
struct TYPE_26__ {size_t functionId; } ;
struct TYPE_27__ {TYPE_1__ pBase; } ;
struct TYPE_25__ {int (* init ) (TYPE_7__*) ;} ;
struct TYPE_24__ {int meterId; int sid; int vnode; } ;
typedef int TSKEY ;
typedef TYPE_4__ SResultInfo ;
typedef TYPE_5__ SQueryRuntimeEnv ;
typedef TYPE_6__ SQuery ;
typedef TYPE_7__ SQLFunctionCtx ;
typedef TYPE_8__ SMeterQuerySupportObj ;
typedef TYPE_9__ SMeterQueryInfo ;
typedef TYPE_10__ SMeterObj ;


 int GET_QINFO_ADDR (TYPE_6__*) ;
 TYPE_4__* GET_RES_INFO (TYPE_7__*) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_6__*) ;
 size_t TSDB_FUNC_FIRST_DST ;
 size_t TSDB_FUNC_LAST_DST ;
 TYPE_19__* aAggs ;
 int assert (int) ;
 TYPE_3__* getFilePage (TYPE_8__*,int ) ;
 scalar_t__ getOutputResPos (TYPE_5__*,TYPE_3__*,size_t,size_t) ;
 int qTrace (char*,int ,int ,int ,int ,int ,size_t) ;
 int resetResultInfo (TYPE_4__*) ;
 int stub1 (TYPE_7__*) ;

void setCtxOutputPointerForSupplementScan(SMeterQuerySupportObj *pSupporter, SMeterQueryInfo *pMeterQueryInfo) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  int32_t index = pMeterQueryInfo->reverseIndex;
  tFilePage *pData = ((void*)0);
  int32_t i = 0;


  for (; i < pMeterQueryInfo->numOfPages; ++i) {
    pData = getFilePage(pSupporter, pMeterQueryInfo->pageList[i]);
    if (index <= pData->numOfElems) {
      break;
    }
    index -= pData->numOfElems;
  }

  assert(index >= 0);





  if (index == 0) {
    return;
  }

  for (int32_t k = 0; k < pQuery->numOfOutputCols; ++k) {
    SQLFunctionCtx *pCtx = &pRuntimeEnv->pCtx[k];

    pCtx->aOutputBuf = getOutputResPos(pRuntimeEnv, pData, index - 1, k);
    SResultInfo *pResInfo = GET_RES_INFO(pCtx);
    if (pResInfo->complete) {
      continue;
    }

    int32_t functId = pQuery->pSelectExpr[k].pBase.functionId;


    if ((QUERY_IS_ASC_QUERY(pQuery) && functId == TSDB_FUNC_FIRST_DST) ||
        (!QUERY_IS_ASC_QUERY(pQuery) && functId == TSDB_FUNC_LAST_DST)) {
      if (pMeterQueryInfo->lastResRows == 0) {
        pCtx->currentStage = 0;

        resetResultInfo(pResInfo);
        aAggs[functId].init(pCtx);
      }
    }
  }


  TSKEY ts = *(TSKEY *)pRuntimeEnv->pCtx[0].aOutputBuf;
  SMeterObj *pMeterObj = pRuntimeEnv->pMeterObj;
  qTrace("QInfo:%p vid:%d sid:%d id:%s, set output result pointer, ts:%lld, index:%d", GET_QINFO_ADDR(pQuery),
         pMeterObj->vnode, pMeterObj->sid, pMeterObj->meterId, ts, pMeterQueryInfo->reverseIndex);
}
