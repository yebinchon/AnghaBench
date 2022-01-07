
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_13__ {TYPE_2__* pExpr; int offset; } ;
struct TYPE_12__ {int aOutputBuf; int outputBytes; int order; TYPE_1__* param; } ;
struct TYPE_11__ {int pBinExpr; } ;
struct TYPE_10__ {TYPE_3__ pBinExprInfo; } ;
struct TYPE_9__ {scalar_t__ pz; } ;
typedef TYPE_4__ SQLFunctionCtx ;
typedef TYPE_5__ SArithmeticSupport ;


 int GET_FORWARD_DIRECTION_FACTOR (int ) ;
 int INC_INIT_VAL (TYPE_4__*,int) ;
 int arithmetic_callback_function ;
 int tSQLBinaryExprCalcTraverse (int ,int,int,TYPE_5__*,int ,int ) ;

__attribute__((used)) static bool arithmetic_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  INC_INIT_VAL(pCtx, 1);
  SArithmeticSupport *sas = (SArithmeticSupport *)pCtx->param[0].pz;

  sas->offset = index;
  tSQLBinaryExprCalcTraverse(sas->pExpr->pBinExprInfo.pBinExpr, 1, pCtx->aOutputBuf, sas, pCtx->order,
                             arithmetic_callback_function);

  pCtx->aOutputBuf += pCtx->outputBytes * GET_FORWARD_DIRECTION_FACTOR(pCtx->order);
  return 1;
}
