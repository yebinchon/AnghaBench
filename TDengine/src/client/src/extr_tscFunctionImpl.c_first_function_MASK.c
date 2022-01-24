#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ order; scalar_t__ size; int /*<<< orphan*/  inputBytes; int /*<<< orphan*/  aOutputBuf; int /*<<< orphan*/  inputType; scalar_t__ hasNull; int /*<<< orphan*/  blockStatus; } ;
struct TYPE_9__ {int complete; int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 char* FUNC1 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ TSQL_SO_DESC ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(SQLFunctionCtx *pCtx) {
  if (!FUNC3(pCtx->blockStatus) || pCtx->order == TSQL_SO_DESC) {
    return;
  }

  int32_t notNullElems = 0;

  // handle the null value
  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = FUNC1(pCtx, i);
    if (pCtx->hasNull && FUNC5(data, pCtx->inputType)) {
      continue;
    }

    FUNC6(pCtx->aOutputBuf, data, pCtx->inputBytes);
    FUNC0(pCtx, i);

    SResultInfo *pInfo = FUNC2(pCtx);
    pInfo->hasResult = DATA_SET_FLAG;
    pInfo->complete = true;

    notNullElems++;
    break;
  }

  FUNC4(pCtx, notNullElems, 1);
}