#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {double num; double** mat; } ;
struct TYPE_9__ {int /*<<< orphan*/  aOutputBuf; int /*<<< orphan*/  outputBytes; int /*<<< orphan*/  outputType; } ;
struct TYPE_8__ {TYPE_3__* interResultBuf; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;
typedef  TYPE_3__ SLeastsquareInfo ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,double,double) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx) {
  // no data in query
  SResultInfo *     pResInfo = FUNC0(pCtx);
  SLeastsquareInfo *pInfo = pResInfo->interResultBuf;

  if (pInfo->num == 0) {
    FUNC2(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
    return;
  }

  double(*param)[3] = pInfo->mat;

  param[1][1] = pInfo->num;
  param[1][0] = param[0][1];

  param[0][0] -= param[1][0] * (param[0][1] / param[1][1]);
  param[0][2] -= param[1][2] * (param[0][1] / param[1][1]);
  param[0][1] = 0;
  param[1][2] -= param[0][2] * (param[1][0] / param[0][0]);
  param[1][0] = 0;
  param[0][2] /= param[0][0];

  param[1][2] /= param[1][1];

  FUNC3(pCtx->aOutputBuf, "(%lf, %lf)", param[0][2], param[1][2]);
  FUNC1(FUNC0(pCtx));
}