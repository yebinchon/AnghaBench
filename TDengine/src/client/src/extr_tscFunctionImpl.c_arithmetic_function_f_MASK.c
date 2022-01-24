#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_13__ {TYPE_2__* pExpr; int /*<<< orphan*/  offset; } ;
struct TYPE_12__ {int aOutputBuf; int outputBytes; int /*<<< orphan*/  order; TYPE_1__* param; } ;
struct TYPE_11__ {int /*<<< orphan*/  pBinExpr; } ;
struct TYPE_10__ {TYPE_3__ pBinExprInfo; } ;
struct TYPE_9__ {scalar_t__ pz; } ;
typedef  TYPE_4__ SQLFunctionCtx ;
typedef  TYPE_5__ SArithmeticSupport ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  arithmetic_callback_function ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(SQLFunctionCtx *pCtx, int32_t index) {
  FUNC1(pCtx, 1);
  SArithmeticSupport *sas = (SArithmeticSupport *)pCtx->param[0].pz;

  sas->offset = index;
  FUNC2(sas->pExpr->pBinExprInfo.pBinExpr, 1, pCtx->aOutputBuf, sas, pCtx->order,
                             arithmetic_callback_function);

  pCtx->aOutputBuf += pCtx->outputBytes * FUNC0(pCtx->order);
  return true;
}