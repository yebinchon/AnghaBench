#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {scalar_t__ size; scalar_t__ hasNull; int /*<<< orphan*/  tagInfo; int /*<<< orphan*/  inputType; int /*<<< orphan*/ * ptsList; TYPE_1__* param; } ;
struct TYPE_11__ {int /*<<< orphan*/  hasResult; } ;
struct TYPE_10__ {int /*<<< orphan*/  i64Key; } ;
typedef  int /*<<< orphan*/  STopBotInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 char* FUNC0 (TYPE_3__*,scalar_t__) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = 0;

  STopBotInfo *pRes = FUNC5(pCtx);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = FUNC0(pCtx, i);
    if (pCtx->hasNull && FUNC6(data, pCtx->inputType)) {
      continue;
    }

    notNullElems++;
    FUNC4(pRes, pCtx->param[0].i64Key, data, pCtx->ptsList[i], pCtx->inputType, &pCtx->tagInfo, NULL,
                           0);
  }

  if (!pCtx->hasNull) {
    FUNC3(pCtx->size == notNullElems);
  }

  // treat the result as only one result
  FUNC2(pCtx, notNullElems, 1);

  if (notNullElems > 0) {
    SResultInfo *pResInfo = FUNC1(pCtx);
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}