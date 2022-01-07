
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ order; scalar_t__ size; int inputBytes; int aOutputBuf; int inputType; scalar_t__ hasNull; int blockStatus; } ;
struct TYPE_9__ {int complete; int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 int DO_UPDATE_TAG_COLUMNS (TYPE_2__*,scalar_t__) ;
 char* GET_INPUT_CHAR_INDEX (TYPE_2__*,scalar_t__) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int IS_DATA_BLOCK_LOADED (int ) ;
 int SET_VAL (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ TSQL_SO_DESC ;
 scalar_t__ isNull (char*,int ) ;
 int memcpy (int ,char*,int ) ;

__attribute__((used)) static void first_function(SQLFunctionCtx *pCtx) {
  if (!IS_DATA_BLOCK_LOADED(pCtx->blockStatus) || pCtx->order == TSQL_SO_DESC) {
    return;
  }

  int32_t notNullElems = 0;


  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = GET_INPUT_CHAR_INDEX(pCtx, i);
    if (pCtx->hasNull && isNull(data, pCtx->inputType)) {
      continue;
    }

    memcpy(pCtx->aOutputBuf, data, pCtx->inputBytes);
    DO_UPDATE_TAG_COLUMNS(pCtx, i);

    SResultInfo *pInfo = GET_RES_INFO(pCtx);
    pInfo->hasResult = DATA_SET_FLAG;
    pInfo->complete = 1;

    notNullElems++;
    break;
  }

  SET_VAL(pCtx, notNullElems, 1);
}
