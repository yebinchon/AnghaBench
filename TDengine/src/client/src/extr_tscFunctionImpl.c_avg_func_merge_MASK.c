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
typedef  scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ num; scalar_t__ sum; } ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/  aOutputBuf; int /*<<< orphan*/  inputBytes; } ;
struct TYPE_8__ {scalar_t__ interResultBuf; int /*<<< orphan*/  hasResult; int /*<<< orphan*/  superTableQ; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;
typedef  TYPE_3__ SAvgInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 char* FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = FUNC1(pCtx);
  FUNC2(pResInfo->superTableQ);

  SAvgInfo *pAvgInfo = (SAvgInfo *)pResInfo->interResultBuf;
  char *    input = FUNC0(pCtx);

  for (int32_t i = 0; i < pCtx->size; ++i, input += pCtx->inputBytes) {
    SAvgInfo *pInput = (SAvgInfo *)input;
    if (pInput->num == 0) {  // current buffer is null
      continue;
    }

    pAvgInfo->sum += pInput->sum;
    pAvgInfo->num += pInput->num;
  }

  // if the data set hasResult is not set, the result is null
  if (pAvgInfo->num > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
    FUNC3(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(SAvgInfo));
  }
}