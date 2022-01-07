
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int i64Key; double dKey; } ;
struct TYPE_14__ {int pTags; int timestamp; TYPE_1__ v; } ;
typedef TYPE_4__ tValuePair ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_13__ {int numOfTagCols; TYPE_2__** pTagCtxList; } ;
struct TYPE_17__ {scalar_t__ currentStage; TYPE_3__ tagInfo; int * ptsOutputBuf; int inputType; scalar_t__ aOutputBuf; int order; } ;
struct TYPE_16__ {int numOfRes; TYPE_5__* interResultBuf; } ;
struct TYPE_15__ {TYPE_4__** res; } ;
struct TYPE_12__ {char* aOutputBuf; int outputBytes; } ;
typedef int TSKEY ;
typedef TYPE_5__ STopBotInfo ;
typedef TYPE_6__ SResultInfo ;
typedef TYPE_7__ SQLFunctionCtx ;


 int GET_FORWARD_DIRECTION_FACTOR (int ) ;
 TYPE_6__* GET_RES_INFO (TYPE_7__*) ;
 int POINTER_BYTES ;
 int QUERY_ASC_FORWARD_STEP ;
 scalar_t__ SECONDARY_STAGE_MERGE ;






 char** calloc (int,int ) ;
 int memcpy (char*,int,size_t) ;
 int pError (char*,int ) ;
 int tfree (char**) ;

__attribute__((used)) static void copyTopBotRes(SQLFunctionCtx *pCtx, int32_t type) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  STopBotInfo *pRes = pResInfo->interResultBuf;

  tValuePair **tvp = pRes->res;
  int32_t step = 0;


  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    step = QUERY_ASC_FORWARD_STEP;
  } else {
    step = GET_FORWARD_DIRECTION_FACTOR(pCtx->order);
  }

  int32_t len = GET_RES_INFO(pCtx)->numOfRes;

  switch (type) {
    case 130: {
      int32_t *output = (int32_t *)pCtx->aOutputBuf;
      for (int32_t i = 0; i < len; ++i, output += step) {
        *output = tvp[i]->v.i64Key;
      }
      break;
    }
    case 133: {
      int64_t *output = (int64_t *)pCtx->aOutputBuf;
      for (int32_t i = 0; i < len; ++i, output += step) {
        *output = tvp[i]->v.i64Key;
      }
      break;
    }
    case 132: {
      double *output = (double *)pCtx->aOutputBuf;
      for (int32_t i = 0; i < len; ++i, output += step) {
        *output = tvp[i]->v.dKey;
      }
      break;
    }
    case 131: {
      float *output = (float *)pCtx->aOutputBuf;
      for (int32_t i = 0; i < len; ++i, output += step) {
        *output = tvp[i]->v.dKey;
      }
      break;
    }
    case 129: {
      int16_t *output = (int16_t *)pCtx->aOutputBuf;
      for (int32_t i = 0; i < len; ++i, output += step) {
        *output = tvp[i]->v.i64Key;
      }
      break;
    }
    case 128: {
      int8_t *output = (int8_t *)pCtx->aOutputBuf;
      for (int32_t i = 0; i < len; ++i, output += step) {
        *output = tvp[i]->v.i64Key;
      }
      break;
    }
    default: {
      pError("top/bottom function not support data type:%d", pCtx->inputType);
      return;
    }
  }


  TSKEY *output = pCtx->ptsOutputBuf;
  for (int32_t i = 0; i < len; ++i, output += step) {
    *output = tvp[i]->timestamp;
  }



  char **pData = calloc(pCtx->tagInfo.numOfTagCols, POINTER_BYTES);
  for (int32_t i = 0; i < pCtx->tagInfo.numOfTagCols; ++i) {
    pData[i] = pCtx->tagInfo.pTagCtxList[i]->aOutputBuf;
  }

  for (int32_t i = 0; i < len; ++i, output += step) {
    int16_t offset = 0;
    for (int32_t j = 0; j < pCtx->tagInfo.numOfTagCols; ++j) {
      memcpy(pData[j], tvp[i]->pTags + offset, (size_t)pCtx->tagInfo.pTagCtxList[j]->outputBytes);
      offset += pCtx->tagInfo.pTagCtxList[j]->outputBytes;
      pData[j] += pCtx->tagInfo.pTagCtxList[j]->outputBytes;
    }
  }

  tfree(pData);
}
