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
struct TYPE_11__ {scalar_t__ hasResult; scalar_t__ ts; } ;
struct TYPE_10__ {int size; int inputBytes; int aOutputBuf; } ;
struct TYPE_9__ {scalar_t__ superTableQ; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;
typedef  TYPE_3__ SFirstLastInfo ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(SQLFunctionCtx *pCtx) {
  char *pData = FUNC1(pCtx);

  SResultInfo *pResInfo = FUNC2(pCtx);
  FUNC3(pCtx->size == 1 && pResInfo->superTableQ);

  // the input data is null
  SFirstLastInfo *pInput = (SFirstLastInfo *)(pData + pCtx->inputBytes);
  if (pInput->hasResult != DATA_SET_FLAG) {
    return;
  }

  SFirstLastInfo *pOutput = (SFirstLastInfo *)(pCtx->aOutputBuf + pCtx->inputBytes);
  if (pOutput->hasResult != DATA_SET_FLAG || pOutput->ts < pInput->ts) {
    FUNC4(pCtx->aOutputBuf, pData, pCtx->inputBytes + sizeof(SFirstLastInfo));

    FUNC0(pCtx, 0);
  }
}