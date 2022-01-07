
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ order; int inputType; scalar_t__ hasNull; int blockStatus; } ;
struct TYPE_9__ {int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 char* GET_INPUT_CHAR_INDEX (TYPE_2__*,scalar_t__) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int IS_DATA_BLOCK_LOADED (int ) ;
 int SET_VAL (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ TSQL_SO_DESC ;
 int first_data_assign_impl (TYPE_2__*,char*,scalar_t__) ;
 scalar_t__ isNull (char*,int ) ;

__attribute__((used)) static void first_dist_function(SQLFunctionCtx *pCtx) {
  if (pCtx->size == 0) {
    return;
  }






  if (!IS_DATA_BLOCK_LOADED(pCtx->blockStatus) || pCtx->order == TSQL_SO_DESC) {
    return;
  }

  int32_t notNullElems = 0;


  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = GET_INPUT_CHAR_INDEX(pCtx, i);
    if (pCtx->hasNull && isNull(data, pCtx->inputType)) {
      continue;
    }

    first_data_assign_impl(pCtx, data, i);

    SResultInfo *pResInfo = GET_RES_INFO(pCtx);
    pResInfo->hasResult = DATA_SET_FLAG;

    notNullElems++;
    break;
  }

  SET_VAL(pCtx, notNullElems, 1);
}
