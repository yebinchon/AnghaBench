
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int int32_t ;
typedef int __block_search_fn_t ;
struct TYPE_20__ {scalar_t__ keyLast; int size; scalar_t__ keyFirst; } ;
struct TYPE_17__ {int order; } ;
struct TYPE_19__ {scalar_t__ ekey; size_t pos; scalar_t__ lastKey; scalar_t__ numOfFilterCols; int checkBufferInLoop; scalar_t__ pointsOffset; int pGroupbyExpr; TYPE_1__ order; } ;
struct TYPE_18__ {int * pTSBuf; int blockStatus; TYPE_3__* pQuery; } ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;
typedef int SField ;
typedef TYPE_4__ SBlockInfo ;


 int GET_FORWARD_DIRECTION_FACTOR (int ) ;
 int IS_FILE_BLOCK (int ) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_3__*) ;
 int QUERY_RESBUF_FULL ;
 int assert (int) ;
 int blockwiseApplyAllFunctions (TYPE_2__*,int,scalar_t__*,char*,int *,TYPE_4__*,int) ;
 int getForwardStepsInBlock (int,int ,TYPE_3__*,scalar_t__*) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 int reviseForwardSteps (TYPE_2__*,int) ;
 int rowwiseApplyAllFunctions (TYPE_2__*,int*,scalar_t__*,char*,int *,TYPE_4__*,int) ;
 int setQueryStatus (TYPE_3__*,int ) ;
 int validateQueryRangeAndData (TYPE_2__*,scalar_t__*,TYPE_4__*) ;

__attribute__((used)) static int32_t applyFunctionsOnBlock(SQueryRuntimeEnv *pRuntimeEnv, SBlockInfo *pBlockInfo, int64_t *pPrimaryColumn,
                                     char *sdata, SField *pFields, __block_search_fn_t searchFn, int32_t *numOfRes) {
  int32_t forwardStep = 0;
  SQuery *pQuery = pRuntimeEnv->pQuery;

  int32_t step = GET_FORWARD_DIRECTION_FACTOR(pQuery->order.order);

  validateQueryRangeAndData(pRuntimeEnv, pPrimaryColumn, pBlockInfo);

  if (QUERY_IS_ASC_QUERY(pQuery)) {
    if (pQuery->ekey < pBlockInfo->keyLast) {
      forwardStep = getForwardStepsInBlock(pBlockInfo->size, searchFn, pQuery, pPrimaryColumn);
      assert(forwardStep >= 0);

      if (forwardStep == 0) {

        assert(pQuery->ekey < pPrimaryColumn[pQuery->pos]);
      } else {
        pQuery->lastKey = pPrimaryColumn[pQuery->pos + (forwardStep - 1)] + step;
      }

    } else {
      forwardStep = pBlockInfo->size - pQuery->pos;
      assert(forwardStep > 0);

      pQuery->lastKey = pBlockInfo->keyLast + step;
    }
  } else {
    if (pQuery->ekey > pBlockInfo->keyFirst) {
      forwardStep = getForwardStepsInBlock(pBlockInfo->size, searchFn, pQuery, pPrimaryColumn);
      assert(forwardStep >= 0);

      if (forwardStep == 0) {

        assert(pQuery->ekey > pPrimaryColumn[pQuery->pos]);
      } else {
        pQuery->lastKey = pPrimaryColumn[pQuery->pos - (forwardStep - 1)] + step;
      }
    } else {
      forwardStep = pQuery->pos + 1;
      assert(forwardStep > 0);

      pQuery->lastKey = pBlockInfo->keyFirst + step;
    }
  }

  int32_t newForwardStep = reviseForwardSteps(pRuntimeEnv, forwardStep);
  assert(newForwardStep <= forwardStep && newForwardStep >= 0);


  if (newForwardStep < forwardStep && newForwardStep > 0) {
    pQuery->lastKey = pPrimaryColumn[pQuery->pos + (newForwardStep - 1) * step] + step;
  }

  bool isFileBlock = IS_FILE_BLOCK(pRuntimeEnv->blockStatus);

  if (pQuery->numOfFilterCols > 0 || pRuntimeEnv->pTSBuf != ((void*)0) || isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    *numOfRes =
        rowwiseApplyAllFunctions(pRuntimeEnv, &newForwardStep, pPrimaryColumn, sdata, pFields, pBlockInfo, isFileBlock);
  } else {
    *numOfRes = blockwiseApplyAllFunctions(pRuntimeEnv, newForwardStep, pPrimaryColumn, sdata, pFields, pBlockInfo,
                                           isFileBlock);
  }

  assert(*numOfRes >= 0);


  if (*numOfRes > 0 && pQuery->checkBufferInLoop == 1) {
    pQuery->pointsOffset -= *numOfRes;
    if (pQuery->pointsOffset <= 0) {
      pQuery->pointsOffset = 0;
      setQueryStatus(pQuery, QUERY_RESBUF_FULL);
    }
  }

  return newForwardStep;
}
