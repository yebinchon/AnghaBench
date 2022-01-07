
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
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_21__ {int numOfNullPoints; int min; int max; int sum; int maxIndex; int minIndex; } ;
struct TYPE_16__ {int isSet; int numOfNull; int min; int max; int sum; int maxIndex; int minIndex; } ;
struct TYPE_20__ {int scanFlag; int hasNull; int blockStatus; int startOffset; int size; TYPE_2__* param; int * ptsList; TYPE_1__ preAggVals; void* aInputElemBuf; int nStartQueryTimestamp; } ;
struct TYPE_19__ {int pos; int ekey; int skey; } ;
struct TYPE_18__ {int EKey; int SKey; } ;
struct TYPE_17__ {void* pz; } ;
struct TYPE_15__ {TYPE_3__* interResultBuf; } ;
struct TYPE_14__ {int nStatus; } ;
typedef TYPE_3__ STwaInfo ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SQLFunctionCtx ;
typedef TYPE_6__ SField ;


 TYPE_12__* GET_RES_INFO (TYPE_5__*) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_4__*) ;
 int TSDB_FUNCSTATE_SELECTIVITY ;
 int TSDB_FUNC_ARITHM ;
 int TSDB_FUNC_BOTTOM ;
 int TSDB_FUNC_DIFF ;
 int TSDB_FUNC_FIRST_DST ;
 int TSDB_FUNC_LAST_DST ;
 int TSDB_FUNC_TOP ;
 int TSDB_FUNC_TWA ;
 int TSDB_KEYSIZE ;
 TYPE_10__* aAggs ;

void setExecParams(SQuery *pQuery, SQLFunctionCtx *pCtx, int64_t startQueryTimestamp, void *inputData,
                   char *primaryColumnData, int32_t size, int32_t functionId, SField *pField, bool hasNull,
                   int32_t blockStatus, void *param, int32_t scanFlag) {
  int32_t startOffset = (QUERY_IS_ASC_QUERY(pQuery)) ? pQuery->pos : pQuery->pos - (size - 1);

  pCtx->nStartQueryTimestamp = startQueryTimestamp;
  pCtx->scanFlag = scanFlag;

  pCtx->aInputElemBuf = inputData;
  pCtx->hasNull = hasNull;
  pCtx->blockStatus = blockStatus;

  if (pField != ((void*)0)) {
    pCtx->preAggVals.isSet = 1;
    pCtx->preAggVals.minIndex = pField->minIndex;
    pCtx->preAggVals.maxIndex = pField->maxIndex;
    pCtx->preAggVals.sum = pField->sum;
    pCtx->preAggVals.max = pField->max;
    pCtx->preAggVals.min = pField->min;
    pCtx->preAggVals.numOfNull = pField->numOfNullPoints;
  } else {
    pCtx->preAggVals.isSet = 0;
  }

  if ((aAggs[functionId].nStatus & TSDB_FUNCSTATE_SELECTIVITY) != 0 && (primaryColumnData != ((void*)0))) {
    pCtx->ptsList = (int64_t *)(primaryColumnData + startOffset * TSDB_KEYSIZE);
  }

  if (functionId >= TSDB_FUNC_FIRST_DST && functionId <= TSDB_FUNC_LAST_DST) {



    pCtx->ptsList = (int64_t *)(primaryColumnData + startOffset * TSDB_KEYSIZE);
  } else if (functionId == TSDB_FUNC_TOP || functionId == TSDB_FUNC_BOTTOM || functionId == TSDB_FUNC_TWA ||
             functionId == TSDB_FUNC_DIFF) {







    if (functionId == TSDB_FUNC_TWA) {
      STwaInfo *pTWAInfo = GET_RES_INFO(pCtx)->interResultBuf;
      pTWAInfo->SKey = pQuery->skey;
      pTWAInfo->EKey = pQuery->ekey;
    }

    pCtx->ptsList = (int64_t *)(primaryColumnData + startOffset * TSDB_KEYSIZE);

  } else if (functionId == TSDB_FUNC_ARITHM) {
    pCtx->param[0].pz = param;
  }

  pCtx->startOffset = startOffset;
  pCtx->size = size;
}
