
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ size; int aOutputBuf; } ;
struct TYPE_10__ {scalar_t__ hasResult; TYPE_1__* interResultBuf; int superTableQ; } ;
struct TYPE_9__ {scalar_t__ hasResult; scalar_t__ min; scalar_t__ max; } ;
typedef TYPE_1__ SSpreadInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 scalar_t__ GET_INPUT_CHAR_INDEX (TYPE_3__*,scalar_t__) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int assert (int ) ;
 int memcpy (int ,TYPE_1__*,int) ;

void spread_func_merge(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  assert(pResInfo->superTableQ);

  SSpreadInfo *pResData = pResInfo->interResultBuf;

  int32_t notNullElems = 0;
  for (int32_t i = 0; i < pCtx->size; ++i) {
    SSpreadInfo *input = (SSpreadInfo *)GET_INPUT_CHAR_INDEX(pCtx, i);


    if (input->hasResult != DATA_SET_FLAG) {
      continue;
    }

    if (pResData->min > input->min) {
      pResData->min = input->min;
    }

    if (pResData->max < input->max) {
      pResData->max = input->max;
    }

    pResData->hasResult = DATA_SET_FLAG;
    notNullElems++;
  }

  if (notNullElems > 0) {
    memcpy(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(SSpreadInfo));
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}
