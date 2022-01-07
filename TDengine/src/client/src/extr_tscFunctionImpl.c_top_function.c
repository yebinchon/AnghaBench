
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ hasNull; int tagInfo; int inputType; int * ptsList; TYPE_1__* param; } ;
struct TYPE_15__ {int hasResult; } ;
struct TYPE_14__ {scalar_t__ num; } ;
struct TYPE_13__ {int i64Key; } ;
typedef TYPE_2__ STopBotInfo ;
typedef TYPE_3__ SResultInfo ;
typedef TYPE_4__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 char* GET_INPUT_CHAR_INDEX (TYPE_4__*,scalar_t__) ;
 TYPE_3__* GET_RES_INFO (TYPE_4__*) ;
 int SET_VAL (TYPE_4__*,scalar_t__,int) ;
 int assert (int) ;
 int do_top_function_add (TYPE_2__*,int ,char*,int ,int ,int *,int *,int ) ;
 TYPE_2__* getTopBotOutputInfo (TYPE_4__*) ;
 scalar_t__ isNull (char*,int ) ;

__attribute__((used)) static void top_function(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = 0;

  STopBotInfo *pRes = getTopBotOutputInfo(pCtx);
  assert(pRes->num >= 0);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = GET_INPUT_CHAR_INDEX(pCtx, i);
    if (pCtx->hasNull && isNull(data, pCtx->inputType)) {
      continue;
    }

    notNullElems++;
    do_top_function_add(pRes, pCtx->param[0].i64Key, data, pCtx->ptsList[i], pCtx->inputType, &pCtx->tagInfo, ((void*)0), 0);
  }

  if (!pCtx->hasNull) {
    assert(pCtx->size == notNullElems);
  }


  SET_VAL(pCtx, notNullElems, 1);

  if (notNullElems > 0) {
    SResultInfo *pResInfo = GET_RES_INFO(pCtx);
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}
