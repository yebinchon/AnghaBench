
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {int i64Key; } ;
struct TYPE_13__ {int size; TYPE_1__ tag; int inputType; scalar_t__ hasNull; } ;
struct TYPE_12__ {int hasResult; TYPE_2__* interResultBuf; } ;
struct TYPE_11__ {int * pTSBuf; } ;
typedef TYPE_2__ STSCompInfo ;
typedef int STSBuf ;
typedef TYPE_3__ SResultInfo ;
typedef TYPE_4__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 void* GET_INPUT_CHAR_INDEX (TYPE_4__*,int ) ;
 TYPE_3__* GET_RES_INFO (TYPE_4__*) ;
 int SET_VAL (TYPE_4__*,int ,int) ;
 int TSDB_KEYSIZE ;
 scalar_t__ isNull (void*,int ) ;
 int tsBufAppend (int *,int ,int ,void*,int ) ;

__attribute__((used)) static void ts_comp_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  STSCompInfo *pInfo = pResInfo->interResultBuf;

  STSBuf *pTSbuf = pInfo->pTSBuf;

  tsBufAppend(pTSbuf, 0, pCtx->tag.i64Key, pData, TSDB_KEYSIZE);
  SET_VAL(pCtx, pCtx->size, 1);

  pResInfo->hasResult = DATA_SET_FLAG;
}
