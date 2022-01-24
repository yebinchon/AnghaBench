#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_22__ {int /*<<< orphan*/  currentStage; int /*<<< orphan*/  tagInfo; int /*<<< orphan*/  outputType; TYPE_1__* param; } ;
struct TYPE_21__ {int /*<<< orphan*/  hasResult; } ;
struct TYPE_20__ {size_t num; TYPE_3__** res; } ;
struct TYPE_18__ {int /*<<< orphan*/  i64Key; } ;
struct TYPE_19__ {int /*<<< orphan*/  pTags; int /*<<< orphan*/  timestamp; TYPE_2__ v; } ;
struct TYPE_17__ {int /*<<< orphan*/  i64Key; } ;
typedef  TYPE_4__ STopBotInfo ;
typedef  TYPE_5__ SResultInfo ;
typedef  TYPE_6__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 TYPE_5__* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_6__*) ; 

__attribute__((used)) static void FUNC6(SQLFunctionCtx *pCtx) {
  STopBotInfo *pInput = (STopBotInfo *)FUNC0(pCtx);

  // construct the input data struct from binary data
  FUNC3(pInput, pCtx);

  STopBotInfo *pOutput = FUNC5(pCtx);

  // the intermediate result is binary, we only use the output data type
  for (int32_t i = 0; i < pInput->num; ++i) {
    FUNC4(pOutput, pCtx->param[0].i64Key, &pInput->res[i]->v.i64Key, pInput->res[i]->timestamp,
                           pCtx->outputType, &pCtx->tagInfo, pInput->res[i]->pTags, pCtx->currentStage);
  }

  FUNC2(pCtx, pInput->num, pOutput->num);

  if (pOutput->num > 0) {
    SResultInfo *pResInfo = FUNC1(pCtx);
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}