
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_14__ {int* ptsList; scalar_t__ nStartQueryTimestamp; int aOutputBuf; int inputType; scalar_t__ hasNull; } ;
struct TYPE_13__ {TYPE_1__* interResultBuf; scalar_t__ superTableQ; void* hasResult; } ;
struct TYPE_12__ {scalar_t__ lastKey; int dOutput; int dLastValue; int iOutput; int iLastValue; void* hasResult; } ;
typedef int TSKEY ;
typedef TYPE_1__ STwaInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 void* DATA_SET_FLAG ;
 void* GET_INPUT_CHAR_INDEX (TYPE_3__*,size_t) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 scalar_t__ INT64_MIN ;
 int SET_VAL (TYPE_3__*,int,int) ;
 int TSDB_DATA_TYPE_DOUBLE ;
 int TSDB_DATA_TYPE_FLOAT ;
 scalar_t__ isNull (void*,int ) ;
 int memcpy (int ,TYPE_1__*,int) ;
 int setTWALastVal (TYPE_3__*,void*,int ,TYPE_1__*) ;

__attribute__((used)) static bool twa_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return 1;
  }

  SET_VAL(pCtx, 1, 1);

  TSKEY *primaryKey = pCtx->ptsList;

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  STwaInfo * pInfo = pResInfo->interResultBuf;

  if (pInfo->lastKey == INT64_MIN) {
    pInfo->lastKey = pCtx->nStartQueryTimestamp;
    setTWALastVal(pCtx, pData, 0, pInfo);

    pInfo->hasResult = DATA_SET_FLAG;
  }

  if (pCtx->inputType == TSDB_DATA_TYPE_FLOAT || pCtx->inputType == TSDB_DATA_TYPE_DOUBLE) {
    pInfo->dOutput += pInfo->dLastValue * (primaryKey[index] - pInfo->lastKey);
  } else {
    pInfo->iOutput += pInfo->iLastValue * (primaryKey[index] - pInfo->lastKey);
  }


  pInfo->lastKey = primaryKey[index];
  setTWALastVal(pCtx, pData, 0, pInfo);


  pResInfo->hasResult = DATA_SET_FLAG;

  if (pResInfo->superTableQ) {
    memcpy(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(STwaInfo));
  }

  return 1;
}
