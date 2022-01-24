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
typedef  scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ size; int /*<<< orphan*/  aOutputBuf; } ;
struct TYPE_10__ {scalar_t__ hasResult; TYPE_1__* interResultBuf; int /*<<< orphan*/  superTableQ; } ;
struct TYPE_9__ {scalar_t__ hasResult; scalar_t__ min; scalar_t__ max; } ;
typedef  TYPE_1__ SSpreadInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 scalar_t__ FUNC0 (TYPE_3__*,scalar_t__) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void FUNC4(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = FUNC1(pCtx);
  FUNC2(pResInfo->superTableQ);

  SSpreadInfo *pResData = pResInfo->interResultBuf;

  int32_t notNullElems = 0;
  for (int32_t i = 0; i < pCtx->size; ++i) {
    SSpreadInfo *input = (SSpreadInfo *)FUNC0(pCtx, i);

    /* no assign tag, the value is null */
    if (input->hasResult != DATA_SET_FLAG) {
      continue;
    }

    if (pResData->min > input->min) {
      pResData->min = input->min;
    }

    if (pResData->max < input->max) {
      pResData->max = input->max;
    }

    pResData->hasResult = DATA_SET_FLAG;
    notNullElems++;
  }

  if (notNullElems > 0) {
    FUNC3(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(SSpreadInfo));
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}