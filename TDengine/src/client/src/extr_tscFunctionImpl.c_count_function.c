
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_10__ {int hasResult; } ;
struct TYPE_8__ {scalar_t__ numOfNull; scalar_t__ isSet; } ;
struct TYPE_9__ {int hasNull; scalar_t__ size; scalar_t__ aOutputBuf; TYPE_1__ preAggVals; int inputType; int blockStatus; } ;
typedef TYPE_2__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 char* GET_INPUT_CHAR_INDEX (TYPE_2__*,scalar_t__) ;
 TYPE_5__* GET_RES_INFO (TYPE_2__*) ;
 scalar_t__ IS_DATA_BLOCK_LOADED (int ) ;
 int SET_VAL (TYPE_2__*,scalar_t__,int) ;
 int assert (int) ;
 scalar_t__ isNull (char*,int ) ;

__attribute__((used)) static void count_function(SQLFunctionCtx *pCtx) {
  int32_t numOfElem = 0;

  if (IS_DATA_BLOCK_LOADED(pCtx->blockStatus)) {






    if (pCtx->hasNull) {
      for (int32_t i = 0; i < pCtx->size; ++i) {
        char *val = GET_INPUT_CHAR_INDEX(pCtx, i);
        if (isNull(val, pCtx->inputType)) {
          continue;
        }

        numOfElem += 1;
      }
    } else {
      numOfElem = pCtx->size;
    }
  } else {





    if (pCtx->preAggVals.isSet) {
      numOfElem = pCtx->size - pCtx->preAggVals.numOfNull;
    } else {
      assert(pCtx->hasNull == 0);
      numOfElem = pCtx->size;
    }
  }

  if (numOfElem > 0) {
    GET_RES_INFO(pCtx)->hasResult = DATA_SET_FLAG;
  }

  *((int64_t *)pCtx->aOutputBuf) += numOfElem;
  SET_VAL(pCtx, numOfElem, 1);
}
