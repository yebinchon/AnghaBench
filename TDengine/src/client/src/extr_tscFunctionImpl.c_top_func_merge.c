
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_21__ {scalar_t__ outputType; int size; int currentStage; int tagInfo; int inputType; TYPE_1__* param; } ;
struct TYPE_20__ {scalar_t__ superTableQ; } ;
struct TYPE_19__ {scalar_t__ num; TYPE_3__** res; } ;
struct TYPE_17__ {int i64Key; } ;
struct TYPE_18__ {int pTags; int timestamp; TYPE_2__ v; } ;
struct TYPE_16__ {int i64Key; } ;
typedef TYPE_4__ STopBotInfo ;
typedef TYPE_5__ SResultInfo ;
typedef TYPE_6__ SQLFunctionCtx ;


 char* GET_INPUT_CHAR (TYPE_6__*) ;
 TYPE_5__* GET_RES_INFO (TYPE_6__*) ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 int assert (int) ;
 int buildTopBotStruct (TYPE_4__*,TYPE_6__*) ;
 int do_top_function_add (TYPE_4__*,int ,int *,int ,int ,int *,int ,int ) ;
 TYPE_4__* getTopBotOutputInfo (TYPE_6__*) ;

__attribute__((used)) static void top_func_merge(SQLFunctionCtx *pCtx) {
  char *input = GET_INPUT_CHAR(pCtx);

  STopBotInfo *pInput = (STopBotInfo *)input;
  if (pInput->num <= 0) {
    return;
  }


  buildTopBotStruct(pInput, pCtx);

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  assert(pResInfo->superTableQ && pCtx->outputType == TSDB_DATA_TYPE_BINARY && pCtx->size == 1);

  STopBotInfo *pOutput = getTopBotOutputInfo(pCtx);

  for (int32_t i = 0; i < pInput->num; ++i) {
    do_top_function_add(pOutput, pCtx->param[0].i64Key, &pInput->res[i]->v.i64Key, pInput->res[i]->timestamp,
                        pCtx->inputType, &pCtx->tagInfo, pInput->res[i]->pTags, pCtx->currentStage);
  }
}
