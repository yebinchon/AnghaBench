#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_11__ {int aOutputBuf; int inputBytes; int /*<<< orphan*/  order; TYPE_1__* param; } ;
struct TYPE_10__ {int numOfRes; } ;
struct TYPE_9__ {int i64Key; } ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(SQLFunctionCtx *pCtx, int32_t index) {
  SResultInfo *pResInfo = FUNC2(pCtx);

  // only one output
  if (pCtx->param[0].i64Key == 1 && pResInfo->numOfRes >= 1) {
    return;
  }

  FUNC3(pCtx, 1);
  char *pData = FUNC1(pCtx, index);
  FUNC4(pCtx->aOutputBuf, pData, pCtx->inputBytes);

  pCtx->aOutputBuf += pCtx->inputBytes * FUNC0(pCtx->order);
}