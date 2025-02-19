
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
struct TYPE_13__ {size_t numOfOutputCols; TYPE_2__* pSelectExpr; } ;
struct TYPE_12__ {int * pCtx; TYPE_5__* pQuery; } ;
struct TYPE_11__ {scalar_t__ numOfRes; } ;
struct TYPE_9__ {size_t functionId; } ;
struct TYPE_10__ {TYPE_1__ pBase; } ;
typedef TYPE_3__ SResultInfo ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SQuery ;


 TYPE_3__* GET_RES_INFO (int *) ;
 size_t TSDB_FUNC_TAG ;
 size_t TSDB_FUNC_TAGPRJ ;
 size_t TSDB_FUNC_TS ;
 int hasMainOutput (TYPE_5__*) ;

int64_t getNumOfResult(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  bool hasMainFunction = hasMainOutput(pQuery);

  int64_t maxOutput = 0;
  for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
    int32_t functionId = pQuery->pSelectExpr[j].pBase.functionId;





    if (hasMainFunction &&
        (functionId == TSDB_FUNC_TS || functionId == TSDB_FUNC_TAG || functionId == TSDB_FUNC_TAGPRJ)) {
      continue;
    }

    SResultInfo *pResInfo = GET_RES_INFO(&pRuntimeEnv->pCtx[j]);
    if (pResInfo != ((void*)0) && maxOutput < pResInfo->numOfRes) {
      maxOutput = pResInfo->numOfRes;
    }
  }

  return maxOutput;
}
