
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; scalar_t__ order; char* aOutputBuf; int inputBytes; int outputBytes; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 int GET_FORWARD_DIRECTION_FACTOR (scalar_t__) ;
 char* GET_INPUT_CHAR (TYPE_1__*) ;
 int INC_INIT_VAL (TYPE_1__*,int) ;
 scalar_t__ TSQL_SO_ASC ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static void col_project_function(SQLFunctionCtx *pCtx) {
  INC_INIT_VAL(pCtx, pCtx->size);

  char *pDest = 0;
  if (pCtx->order == TSQL_SO_ASC) {
    pDest = pCtx->aOutputBuf;
  } else {
    pDest = pCtx->aOutputBuf - (pCtx->size - 1) * pCtx->inputBytes;
  }

  char *pData = GET_INPUT_CHAR(pCtx);
  memcpy(pDest, pData, (size_t)pCtx->size * pCtx->inputBytes);

  pCtx->aOutputBuf += pCtx->size * pCtx->outputBytes * GET_FORWARD_DIRECTION_FACTOR(pCtx->order);
}
