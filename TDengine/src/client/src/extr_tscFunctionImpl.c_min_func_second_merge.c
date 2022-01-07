
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_9__ {int aOutputBuf; int outputBytes; } ;
struct TYPE_8__ {int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ minmax_merge_impl (TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static void min_func_second_merge(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = minmax_merge_impl(pCtx, pCtx->outputBytes, pCtx->aOutputBuf, 1);

  SET_VAL(pCtx, notNullElems, 1);

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  if (notNullElems > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}
