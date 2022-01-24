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
struct TYPE_10__ {scalar_t__ size; scalar_t__ order; int /*<<< orphan*/  inputType; scalar_t__ hasNull; int /*<<< orphan*/  blockStatus; } ;
struct TYPE_9__ {int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 char* FUNC0 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ TSQL_SO_ASC ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(SQLFunctionCtx *pCtx) {
  if (pCtx->size == 0) {
    return;
  }

  /*
   * 1. for scan data in asc order, no need to check data
   * 2. for data blocks that are not loaded, no need to check data
   */
  if (!FUNC2(pCtx->blockStatus) || pCtx->order == TSQL_SO_ASC) {
    return;
  }

  int32_t notNullElems = 0;

  for (int32_t i = pCtx->size - 1; i >= 0; --i) {
    char *data = FUNC0(pCtx, i);
    if (pCtx->hasNull && FUNC4(data, pCtx->inputType)) {
      continue;
    }

    FUNC5(pCtx, data, i);

    SResultInfo *pResInfo = FUNC1(pCtx);
    pResInfo->hasResult = DATA_SET_FLAG;

    notNullElems++;
    break;
  }

  FUNC3(pCtx, notNullElems, 1);
}