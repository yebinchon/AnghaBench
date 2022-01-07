
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_11__ {int aOutputBuf; int inputBytes; int order; TYPE_1__* param; } ;
struct TYPE_10__ {int numOfRes; } ;
struct TYPE_9__ {int i64Key; } ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 int GET_FORWARD_DIRECTION_FACTOR (int ) ;
 char* GET_INPUT_CHAR_INDEX (TYPE_3__*,int ) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int INC_INIT_VAL (TYPE_3__*,int) ;
 int memcpy (int,char*,int) ;

__attribute__((used)) static void col_project_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);


  if (pCtx->param[0].i64Key == 1 && pResInfo->numOfRes >= 1) {
    return;
  }

  INC_INIT_VAL(pCtx, 1);
  char *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  memcpy(pCtx->aOutputBuf, pData, pCtx->inputBytes);

  pCtx->aOutputBuf += pCtx->inputBytes * GET_FORWARD_DIRECTION_FACTOR(pCtx->order);
}
