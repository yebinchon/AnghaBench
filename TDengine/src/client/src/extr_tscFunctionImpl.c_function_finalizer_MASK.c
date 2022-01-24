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
struct TYPE_8__ {int /*<<< orphan*/  outputBytes; int /*<<< orphan*/  outputType; int /*<<< orphan*/  aOutputBuf; } ;
struct TYPE_7__ {scalar_t__ hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = FUNC0(pCtx);

  if (pResInfo->hasResult != DATA_SET_FLAG) {
    FUNC1("no result generated, result is set to NULL");
    FUNC3(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
  }

  FUNC2(FUNC0(pCtx));
}