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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_10__ {scalar_t__ order; int /*<<< orphan*/  inputBytes; int /*<<< orphan*/  aOutputBuf; int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
struct TYPE_9__ {int complete; int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 scalar_t__ TSQL_SO_DESC ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(SQLFunctionCtx *pCtx, int32_t index) {
  if (pCtx->order == TSQL_SO_DESC) {
    return;
  }

  void *pData = FUNC1(pCtx, index);
  if (pCtx->hasNull && FUNC4(pData, pCtx->inputType)) {
    return;
  }

  FUNC3(pCtx, 1, 1);
  FUNC5(pCtx->aOutputBuf, pData, pCtx->inputBytes);
  FUNC0(pCtx, 0);

  SResultInfo *pInfo = FUNC2(pCtx);
  pInfo->hasResult = DATA_SET_FLAG;
  pInfo->complete = true;  // get the first not-null data, completed
}