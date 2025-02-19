
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_14__ {size_t numOfTagCols; int tagsLen; TYPE_6__** pTagCtxList; } ;
struct TYPE_18__ {TYPE_2__ tagInfo; scalar_t__ outputBytes; } ;
struct TYPE_17__ {size_t numOfOutputCols; TYPE_1__* pSelectExpr; } ;
struct TYPE_16__ {TYPE_6__* pCtx; } ;
struct TYPE_15__ {size_t functionId; } ;
struct TYPE_13__ {TYPE_3__ pBase; } ;
struct TYPE_12__ {int nStatus; } ;
typedef TYPE_3__ SSqlFuncExprMsg ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SQuery ;
typedef TYPE_6__ SQLFunctionCtx ;


 int POINTER_BYTES ;
 int TSDB_FUNCSTATE_SELECTIVITY ;
 size_t TSDB_FUNC_TAG ;
 size_t TSDB_FUNC_TAG_DUMMY ;
 size_t TSDB_FUNC_TS ;
 size_t TSDB_FUNC_TS_DUMMY ;
 TYPE_11__* aAggs ;
 int assert (int ) ;
 TYPE_6__** calloc (size_t,int ) ;
 scalar_t__ isSelectivityWithTagsQuery (TYPE_5__*) ;

__attribute__((used)) static void setCtxTagColumnInfo(SQuery* pQuery, SQueryRuntimeEnv* pRuntimeEnv) {
  if (isSelectivityWithTagsQuery(pQuery)) {
    int32_t num = 0;
    SQLFunctionCtx *pCtx = ((void*)0);
    int16_t tagLen = 0;

    SQLFunctionCtx ** pTagCtx = calloc(pQuery->numOfOutputCols, POINTER_BYTES);
    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      SSqlFuncExprMsg *pSqlFuncMsg = &pQuery->pSelectExpr[i].pBase;
      if (pSqlFuncMsg->functionId == TSDB_FUNC_TAG_DUMMY || pSqlFuncMsg->functionId == TSDB_FUNC_TS_DUMMY) {
        tagLen += pRuntimeEnv->pCtx[i].outputBytes;
        pTagCtx[num++] = &pRuntimeEnv->pCtx[i];
      } else if ((aAggs[pSqlFuncMsg->functionId].nStatus & TSDB_FUNCSTATE_SELECTIVITY) != 0) {
        pCtx = &pRuntimeEnv->pCtx[i];
      } else if (pSqlFuncMsg->functionId == TSDB_FUNC_TS || pSqlFuncMsg->functionId == TSDB_FUNC_TAG) {


        continue;
      } else {
        assert(0);
      }
    }

    pCtx->tagInfo.pTagCtxList = pTagCtx;
    pCtx->tagInfo.numOfTagCols = num;
    pCtx->tagInfo.tagsLen = tagLen;
  }
}
