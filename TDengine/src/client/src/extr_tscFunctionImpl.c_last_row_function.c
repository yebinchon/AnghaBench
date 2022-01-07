
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {void* hasResult; int ts; } ;
struct TYPE_13__ {int size; TYPE_1__* param; scalar_t__ inputBytes; scalar_t__ aOutputBuf; int inputType; } ;
struct TYPE_12__ {scalar_t__ superTableQ; scalar_t__ interResultBuf; } ;
struct TYPE_11__ {int i64Key; } ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;
typedef TYPE_4__ SLastrowInfo ;


 void* DATA_SET_FLAG ;
 int DO_UPDATE_TAG_COLUMNS (TYPE_3__*,int ) ;
 char* GET_INPUT_CHAR (TYPE_3__*) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int SET_VAL (TYPE_3__*,int,int) ;
 int assert (int) ;
 int assignVal (scalar_t__,char*,scalar_t__,int ) ;

__attribute__((used)) static void last_row_function(SQLFunctionCtx *pCtx) {
  assert(pCtx->size == 1);

  char *pData = GET_INPUT_CHAR(pCtx);
  assignVal(pCtx->aOutputBuf, pData, pCtx->inputBytes, pCtx->inputType);

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  SLastrowInfo *pInfo = (SLastrowInfo *)pResInfo->interResultBuf;
  pInfo->ts = pCtx->param[0].i64Key;
  pInfo->hasResult = DATA_SET_FLAG;


  if (pResInfo->superTableQ) {
    SLastrowInfo *pInfo1 = (SLastrowInfo *)(pCtx->aOutputBuf + pCtx->inputBytes);
    pInfo1->ts = pCtx->param[0].i64Key;
    pInfo1->hasResult = DATA_SET_FLAG;

    DO_UPDATE_TAG_COLUMNS(pCtx, 0);
  }

  SET_VAL(pCtx, pCtx->size, 1);
}
