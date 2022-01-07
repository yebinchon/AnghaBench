
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {int tagInfo; int inputType; int * ptsList; TYPE_1__* param; scalar_t__ hasNull; } ;
struct TYPE_11__ {int hasResult; } ;
struct TYPE_10__ {int i64Key; } ;
typedef int STopBotInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 char* GET_INPUT_CHAR_INDEX (TYPE_3__*,size_t) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int SET_VAL (TYPE_3__*,int,int) ;
 int do_bottom_function_add (int *,int ,char*,int ,int ,int *,int *,int ) ;
 int * getTopBotOutputInfo (TYPE_3__*) ;
 scalar_t__ isNull (char*,int ) ;

__attribute__((used)) static void bottom_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  char *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  STopBotInfo *pRes = getTopBotOutputInfo(pCtx);
  SET_VAL(pCtx, 1, 1);
  do_bottom_function_add(pRes, pCtx->param[0].i64Key, pData, pCtx->ptsList[index], pCtx->inputType, &pCtx->tagInfo,
                         ((void*)0), 0);

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  pResInfo->hasResult = DATA_SET_FLAG;
}
