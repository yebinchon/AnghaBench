
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;


typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
struct TYPE_26__ {size_t numOfNullPoints; int member_0; } ;
struct TYPE_25__ {size_t numOfOutputCols; TYPE_2__* pSelectExpr; int precision; int intervalTimeUnit; int nAggTimeInterval; int ekey; int skey; } ;
struct TYPE_24__ {int scanFlag; int blockStatus; TYPE_4__* pQuery; int * pCtx; } ;
struct TYPE_22__ {size_t functionId; } ;
struct TYPE_23__ {TYPE_1__ pBase; } ;
struct TYPE_21__ {int (* xFunction ) (int *) ;} ;
typedef int TSKEY ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef int SQLFunctionCtx ;
typedef TYPE_5__ SField ;
typedef int SBlockInfo ;
typedef int SArithmeticSupport ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_4__*) ;
 TYPE_19__* aAggs ;
 int * calloc (size_t,int) ;
 scalar_t__ functionNeedToExecute (TYPE_3__*,int *,size_t) ;
 char* getDataBlocks (TYPE_3__*,char*,int *,size_t,size_t,int) ;
 TYPE_5__* getFieldInfo (TYPE_4__*,int *,TYPE_5__*,size_t) ;
 scalar_t__ getNumOfResult (TYPE_3__*) ;
 int hasNullVal (TYPE_4__*,size_t,int *,TYPE_5__*,int) ;
 int setExecParams (TYPE_4__*,int *,scalar_t__,char*,char*,size_t,size_t,TYPE_5__*,int,int ,int *,int ) ;
 int stub1 (int *) ;
 scalar_t__ taosGetIntervalStartTimestamp (int ,int ,int ,int ) ;
 int tfree (int *) ;
 int validateTimestampForSupplementResult (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static int32_t blockwiseApplyAllFunctions(SQueryRuntimeEnv *pRuntimeEnv, int32_t forwardStep, TSKEY *primaryKeyCol,
                                          char *data, SField *pFields, SBlockInfo *pBlockInfo, bool isDiskFileBlock) {
  SQLFunctionCtx *pCtx = pRuntimeEnv->pCtx;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  int64_t prevNumOfRes = getNumOfResult(pRuntimeEnv);

  SArithmeticSupport *sasArray = calloc((size_t)pQuery->numOfOutputCols, sizeof(SArithmeticSupport));

  for (int32_t k = 0; k < pQuery->numOfOutputCols; ++k) {
    int32_t functionId = pQuery->pSelectExpr[k].pBase.functionId;




    SField dummyField = {0};

    bool hasNull = hasNullVal(pQuery, k, pBlockInfo, pFields, isDiskFileBlock);
    char *dataBlock = getDataBlocks(pRuntimeEnv, data, &sasArray[k], k, forwardStep, isDiskFileBlock);

    SField *tpField = ((void*)0);

    if (pFields != ((void*)0)) {
      tpField = getFieldInfo(pQuery, pBlockInfo, pFields, k);




      if (tpField == ((void*)0)) {
        tpField = &dummyField;
        tpField->numOfNullPoints = (int32_t)forwardStep;
      }
    }

    TSKEY ts = QUERY_IS_ASC_QUERY(pQuery) ? pQuery->skey : pQuery->ekey;

    int64_t alignedTimestamp = taosGetIntervalStartTimestamp(ts, pQuery->nAggTimeInterval, pQuery->intervalTimeUnit,
                                                             pQuery->precision);
    setExecParams(pQuery, &pCtx[k], alignedTimestamp, dataBlock, (char *)primaryKeyCol, forwardStep, functionId,
                  tpField, hasNull, pRuntimeEnv->blockStatus, &sasArray[k], pRuntimeEnv->scanFlag);
  }






  for (int32_t k = 0; k < pQuery->numOfOutputCols; ++k) {
    int32_t functionId = pQuery->pSelectExpr[k].pBase.functionId;
    if (functionNeedToExecute(pRuntimeEnv, &pCtx[k], functionId)) {
      aAggs[functionId].xFunction(&pCtx[k]);
    }
  }

  int64_t numOfIncrementRes = getNumOfResult(pRuntimeEnv) - prevNumOfRes;
  validateTimestampForSupplementResult(pRuntimeEnv, numOfIncrementRes);

  tfree(sasArray);

  return (int32_t)numOfIncrementRes;
}
