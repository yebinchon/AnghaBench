
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ hasResult; scalar_t__ ts; } ;
struct TYPE_10__ {int size; int inputBytes; int aOutputBuf; } ;
struct TYPE_9__ {scalar_t__ superTableQ; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SFirstLastInfo ;


 scalar_t__ DATA_SET_FLAG ;
 int DO_UPDATE_TAG_COLUMNS (TYPE_2__*,int ) ;
 char* GET_INPUT_CHAR (TYPE_2__*) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int assert (int) ;
 int memcpy (int,char*,int) ;

__attribute__((used)) static void first_dist_func_merge(SQLFunctionCtx *pCtx) {
  char *pData = GET_INPUT_CHAR(pCtx);

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  assert(pCtx->size == 1 && pResInfo->superTableQ);

  SFirstLastInfo *pInput = (SFirstLastInfo *)(pData + pCtx->inputBytes);
  if (pInput->hasResult != DATA_SET_FLAG) {
    return;
  }

  SFirstLastInfo *pOutput = (SFirstLastInfo *)(pCtx->aOutputBuf + pCtx->inputBytes);
  if (pOutput->hasResult != DATA_SET_FLAG || pInput->ts < pOutput->ts) {
    memcpy(pCtx->aOutputBuf, pData, pCtx->inputBytes + sizeof(SFirstLastInfo));
    DO_UPDATE_TAG_COLUMNS(pCtx, 0);
  }
}
