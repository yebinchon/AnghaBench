
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {scalar_t__ scanFlag; int nStartQueryTimestamp; scalar_t__ aOutputBuf; int size; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 int SET_VAL (TYPE_1__*,int ,int) ;
 scalar_t__ SUPPLEMENTARY_SCAN ;

__attribute__((used)) static void date_col_output_function(SQLFunctionCtx *pCtx) {
  if (pCtx->scanFlag == SUPPLEMENTARY_SCAN) {
    return;
  }

  SET_VAL(pCtx, pCtx->size, 1);
  *(int64_t *)(pCtx->aOutputBuf) = pCtx->nStartQueryTimestamp;
}
