
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
typedef int __block_search_fn_t ;
struct TYPE_27__ {scalar_t__ keyLast; scalar_t__ keyFirst; } ;
struct TYPE_26__ {TYPE_4__* pMeterQInfo; } ;
struct TYPE_25__ {int lastResRows; } ;
struct TYPE_22__ {TYPE_2__* pQuery; } ;
struct TYPE_24__ {TYPE_1__ runtimeEnv; } ;
struct TYPE_23__ {scalar_t__ skey; scalar_t__ ekey; } ;
typedef int TSKEY ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SMeterQuerySupportObj ;
typedef TYPE_4__ SMeterQueryInfo ;
typedef TYPE_5__ SMeterDataInfo ;
typedef int SField ;
typedef TYPE_6__ SBlockInfo ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_2__*) ;
 int applyFunctionsOnBlock (TYPE_1__*,TYPE_6__*,int *,char*,int *,int ,int*) ;
 int assert (int) ;
 int doApplyIntervalQueryOnBlock (TYPE_3__*,TYPE_4__*,TYPE_6__*,int *,char*,int *,int ) ;
 int getNextAccessedKeyInData (TYPE_2__*,int *,TYPE_6__*,int) ;
 int saveIntervalQueryRange (TYPE_1__*,TYPE_4__*) ;
 int setIntervalQueryRange (TYPE_4__*,TYPE_3__*,int ) ;

__attribute__((used)) static void applyIntervalQueryOnBlock(SMeterQuerySupportObj *pSupporter, SMeterDataInfo *pInfoEx, char *data,
                                      int64_t *pPrimaryData, SBlockInfo *pBlockInfo, int32_t blockStatus,
                                      SField *pFields, __block_search_fn_t searchFn) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;
  SMeterQueryInfo * pInfo = pInfoEx->pMeterQInfo;





  TSKEY key = getNextAccessedKeyInData(pQuery, pPrimaryData, pBlockInfo, blockStatus);
  setIntervalQueryRange(pInfoEx->pMeterQInfo, pSupporter, key);

  if (((pQuery->skey > pQuery->ekey) && QUERY_IS_ASC_QUERY(pQuery)) ||
      ((pQuery->skey < pQuery->ekey) && !QUERY_IS_ASC_QUERY(pQuery))) {
    return;
  }

  if (((pBlockInfo->keyLast < pQuery->ekey) && QUERY_IS_ASC_QUERY(pQuery)) ||
      ((pBlockInfo->keyFirst > pQuery->ekey) && !QUERY_IS_ASC_QUERY(pQuery))) {
    int32_t numOfRes = 0;

    int32_t steps = applyFunctionsOnBlock(pRuntimeEnv, pBlockInfo, pPrimaryData, data, pFields, searchFn, &numOfRes);
    assert(numOfRes <= 1 && numOfRes >= 0 && steps > 0);

    if (pInfo->lastResRows == 0) {
      pInfo->lastResRows = numOfRes;
    } else {
      assert(pInfo->lastResRows == 1);
    }

    saveIntervalQueryRange(pRuntimeEnv, pInfo);
  } else {
    doApplyIntervalQueryOnBlock(pSupporter, pInfo, pBlockInfo, pPrimaryData, data, pFields, searchFn);
  }
}
