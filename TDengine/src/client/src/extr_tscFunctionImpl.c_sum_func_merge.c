
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ aOutputBuf; } ;
struct TYPE_6__ {int hasResult; } ;
typedef TYPE_1__ SSumInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 int SET_VAL (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ sum_merge_impl (TYPE_2__*) ;

__attribute__((used)) static void sum_func_merge(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = sum_merge_impl(pCtx);

  SET_VAL(pCtx, notNullElems, 1);
  SSumInfo *pSumInfo = (SSumInfo *)pCtx->aOutputBuf;

  if (notNullElems > 0) {

    pSumInfo->hasResult = DATA_SET_FLAG;
  }
}
