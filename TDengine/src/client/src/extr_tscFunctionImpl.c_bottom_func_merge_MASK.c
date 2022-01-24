#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_21__ {scalar_t__ outputType; int size; int /*<<< orphan*/  currentStage; int /*<<< orphan*/  tagInfo; int /*<<< orphan*/  inputType; TYPE_1__* param; } ;
struct TYPE_20__ {scalar_t__ superTableQ; } ;
struct TYPE_19__ {scalar_t__ num; TYPE_3__** res; } ;
struct TYPE_17__ {int /*<<< orphan*/  i64Key; } ;
struct TYPE_18__ {int /*<<< orphan*/  pTags; int /*<<< orphan*/  timestamp; TYPE_2__ v; } ;
struct TYPE_16__ {int /*<<< orphan*/  i64Key; } ;
typedef  TYPE_4__ STopBotInfo ;
typedef  TYPE_5__ SResultInfo ;
typedef  TYPE_6__ SQLFunctionCtx ;

/* Variables and functions */
 char* FUNC0 (TYPE_6__*) ; 
 TYPE_5__* FUNC1 (TYPE_6__*) ; 
 scalar_t__ TSDB_DATA_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_6__*) ; 

__attribute__((used)) static void FUNC6(SQLFunctionCtx *pCtx) {
  char *input = FUNC0(pCtx);

  STopBotInfo *pInput = (STopBotInfo *)input;
  if (pInput->num <= 0) {
    return;
  }

  // remmap the input buffer may cause the struct pointer invalid, so rebuild the STopBotInfo is necessary
  FUNC3(pInput, pCtx);

  SResultInfo *pResInfo = FUNC1(pCtx);
  FUNC2(pResInfo->superTableQ && pCtx->outputType == TSDB_DATA_TYPE_BINARY && pCtx->size == 1);

  STopBotInfo *pOutput = FUNC5(pCtx);

  for (int32_t i = 0; i < pInput->num; ++i) {
    FUNC4(pOutput, pCtx->param[0].i64Key, &pInput->res[i]->v.i64Key, pInput->res[i]->timestamp,
                           pCtx->inputType, &pCtx->tagInfo, pInput->res[i]->pTags, pCtx->currentStage);
  }
}