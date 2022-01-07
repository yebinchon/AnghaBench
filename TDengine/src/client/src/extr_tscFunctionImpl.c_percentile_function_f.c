
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_11__ {int pMemBucket; } ;
struct TYPE_10__ {int inputType; scalar_t__ hasNull; } ;
struct TYPE_9__ {int hasResult; scalar_t__ interResultBuf; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SPercentileInfo ;


 int DATA_SET_FLAG ;
 void* GET_INPUT_CHAR_INDEX (TYPE_2__*,int ) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,int,int) ;
 scalar_t__ isNull (void*,int ) ;
 int tMemBucketPut (int ,void*,int) ;

__attribute__((used)) static void percentile_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  SPercentileInfo *pInfo = (SPercentileInfo *)pResInfo->interResultBuf;
  tMemBucketPut(pInfo->pMemBucket, pData, 1);

  SET_VAL(pCtx, 1, 1);
  pResInfo->hasResult = DATA_SET_FLAG;
}
