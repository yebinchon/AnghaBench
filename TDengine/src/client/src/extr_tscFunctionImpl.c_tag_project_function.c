
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ inputBytes; scalar_t__ outputBytes; scalar_t__ aOutputBuf; int outputType; int tag; int order; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 scalar_t__ GET_FORWARD_DIRECTION_FACTOR (int ) ;
 int INC_INIT_VAL (TYPE_1__*,scalar_t__) ;
 int assert (int) ;
 int tVariantDump (int *,scalar_t__,int ) ;

__attribute__((used)) static void tag_project_function(SQLFunctionCtx *pCtx) {
  INC_INIT_VAL(pCtx, pCtx->size);

  assert(pCtx->inputBytes == pCtx->outputBytes);
  int32_t factor = GET_FORWARD_DIRECTION_FACTOR(pCtx->order);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    tVariantDump(&pCtx->tag, pCtx->aOutputBuf, pCtx->outputType);
    pCtx->aOutputBuf += pCtx->outputBytes * factor;
  }
}
