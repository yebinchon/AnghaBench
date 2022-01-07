
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ order; int inputType; scalar_t__ hasNull; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 char* GET_INPUT_CHAR_INDEX (TYPE_1__*,int ) ;
 int SET_VAL (TYPE_1__*,int,int) ;
 scalar_t__ TSQL_SO_DESC ;
 int first_data_assign_impl (TYPE_1__*,char*,int ) ;
 scalar_t__ isNull (char*,int ) ;

__attribute__((used)) static void first_dist_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  if (pCtx->size == 0) {
    return;
  }

  char *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  if (pCtx->order == TSQL_SO_DESC) {
    return;
  }

  first_data_assign_impl(pCtx, pData, index);

  SET_VAL(pCtx, 1, 1);
}
