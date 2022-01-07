
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int numOfRes; } ;
struct TYPE_14__ {TYPE_2__* pExpr; } ;
struct TYPE_13__ {int size; int aOutputBuf; int outputBytes; int order; TYPE_3__* param; } ;
struct TYPE_12__ {scalar_t__ pz; } ;
struct TYPE_10__ {int pBinExpr; } ;
struct TYPE_11__ {TYPE_1__ pBinExprInfo; } ;
typedef TYPE_4__ SQLFunctionCtx ;
typedef TYPE_5__ SArithmeticSupport ;


 int GET_FORWARD_DIRECTION_FACTOR (int ) ;
 TYPE_8__* GET_RES_INFO (TYPE_4__*) ;
 int arithmetic_callback_function ;
 int tSQLBinaryExprCalcTraverse (int ,int,int,TYPE_5__*,int ,int ) ;

__attribute__((used)) static void arithmetic_function(SQLFunctionCtx *pCtx) {
  GET_RES_INFO(pCtx)->numOfRes += pCtx->size;
  SArithmeticSupport *sas = (SArithmeticSupport *)pCtx->param[0].pz;

  tSQLBinaryExprCalcTraverse(sas->pExpr->pBinExprInfo.pBinExpr, pCtx->size, pCtx->aOutputBuf, sas, pCtx->order,
                             arithmetic_callback_function);

  pCtx->aOutputBuf += pCtx->outputBytes * pCtx->size * GET_FORWARD_DIRECTION_FACTOR(pCtx->order);
}
