#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ currentStage; int /*<<< orphan*/  outputBytes; int /*<<< orphan*/  outputType; int /*<<< orphan*/  aOutputBuf; } ;
struct TYPE_7__ {scalar_t__ hasResult; int numOfRes; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ SECONDARY_STAGE_MERGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SQLFunctionCtx *pCtx) {
  // do nothing at the first stage
  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    SResultInfo *pResInfo = FUNC0(pCtx);
    if (pResInfo->hasResult != DATA_SET_FLAG) {
      FUNC2(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }
  } else {
    // do nothing
  }

  FUNC0(pCtx)->numOfRes = 1;
  FUNC1(FUNC0(pCtx));
}