
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {scalar_t__ order; int inputBytes; int aOutputBuf; int inputType; scalar_t__ hasNull; } ;
struct TYPE_9__ {int complete; int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 int DO_UPDATE_TAG_COLUMNS (TYPE_2__*,int ) ;
 void* GET_INPUT_CHAR_INDEX (TYPE_2__*,int ) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,int,int) ;
 scalar_t__ TSQL_SO_DESC ;
 scalar_t__ isNull (void*,int ) ;
 int memcpy (int ,void*,int ) ;

__attribute__((used)) static void first_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  if (pCtx->order == TSQL_SO_DESC) {
    return;
  }

  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  SET_VAL(pCtx, 1, 1);
  memcpy(pCtx->aOutputBuf, pData, pCtx->inputBytes);
  DO_UPDATE_TAG_COLUMNS(pCtx, 0);

  SResultInfo *pInfo = GET_RES_INFO(pCtx);
  pInfo->hasResult = DATA_SET_FLAG;
  pInfo->complete = 1;
}
