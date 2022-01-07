
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int inputType; int inputBytes; int aOutputBuf; int size; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 char* GET_INPUT_CHAR (TYPE_1__*) ;
 int SET_VAL (TYPE_1__*,int ,int) ;
 int assignVal (int ,char*,int ,int ) ;

__attribute__((used)) static void copy_function(SQLFunctionCtx *pCtx) {
  SET_VAL(pCtx, pCtx->size, 1);

  char *pData = GET_INPUT_CHAR(pCtx);
  assignVal(pCtx->aOutputBuf, pData, pCtx->inputBytes, pCtx->inputType);
}
