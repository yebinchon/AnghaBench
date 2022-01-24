#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ interResultBuf; } ;
struct TYPE_9__ {scalar_t__ aOutputBuf; int /*<<< orphan*/  outputBytes; int /*<<< orphan*/  outputType; } ;
struct TYPE_8__ {int num; int res; } ;
typedef  TYPE_1__ SStddevInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(SQLFunctionCtx *pCtx) {
  SStddevInfo *pStd = (SStddevInfo *)FUNC0(pCtx)->interResultBuf;

  if (pStd->num <= 0) {
    FUNC3(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
  } else {
    double *retValue = (double *)pCtx->aOutputBuf;
    *retValue = FUNC4(pStd->res / pStd->num);
    FUNC1(pCtx, 1, 1);
  }

  FUNC2(FUNC0(pCtx));
}