#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_9__ {scalar_t__ aOutputBuf; int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
struct TYPE_8__ {int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 char* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx, int32_t index) {
  char *pData = FUNC0(pCtx, index);
  if (pCtx->hasNull && FUNC3(pData, pCtx->inputType)) {
    return;
  }

  FUNC2(pCtx, 1, 1);

  *((int64_t *)pCtx->aOutputBuf) += 1;

  // do not need it actually
  SResultInfo *pInfo = FUNC1(pCtx);
  pInfo->hasResult = DATA_SET_FLAG;
}