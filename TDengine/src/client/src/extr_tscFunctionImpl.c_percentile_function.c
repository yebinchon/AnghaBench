
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_11__ {int pMemBucket; } ;
struct TYPE_10__ {scalar_t__ size; int inputType; scalar_t__ hasNull; } ;
struct TYPE_9__ {int hasResult; TYPE_3__* interResultBuf; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SPercentileInfo ;


 int DATA_SET_FLAG ;
 char* GET_INPUT_CHAR_INDEX (TYPE_2__*,scalar_t__) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ isNull (char*,int ) ;
 int tMemBucketPut (int ,char*,int) ;

__attribute__((used)) static void percentile_function(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = 0;

  SResultInfo * pResInfo = GET_RES_INFO(pCtx);
  SPercentileInfo *pInfo = pResInfo->interResultBuf;

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = GET_INPUT_CHAR_INDEX(pCtx, i);
    if (pCtx->hasNull && isNull(data, pCtx->inputType)) {
      continue;
    }

    notNullElems += 1;
    tMemBucketPut(pInfo->pMemBucket, data, 1);
  }

  SET_VAL(pCtx, notNullElems, 1);
  pResInfo->hasResult = DATA_SET_FLAG;
}
