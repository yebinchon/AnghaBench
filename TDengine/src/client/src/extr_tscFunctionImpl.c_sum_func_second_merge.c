
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef int SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 TYPE_1__* GET_RES_INFO (int *) ;
 int SET_VAL (int *,scalar_t__,int) ;
 scalar_t__ sum_merge_impl (int *) ;

__attribute__((used)) static void sum_func_second_merge(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = sum_merge_impl(pCtx);

  SET_VAL(pCtx, notNullElems, 1);
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  if (notNullElems > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}
