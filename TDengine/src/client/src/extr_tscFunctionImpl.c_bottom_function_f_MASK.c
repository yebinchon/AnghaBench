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
typedef  size_t int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  tagInfo; int /*<<< orphan*/  inputType; int /*<<< orphan*/ * ptsList; TYPE_1__* param; scalar_t__ hasNull; } ;
struct TYPE_11__ {int /*<<< orphan*/  hasResult; } ;
struct TYPE_10__ {int /*<<< orphan*/  i64Key; } ;
typedef  int /*<<< orphan*/  STopBotInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 char* FUNC0 (TYPE_3__*,size_t) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(SQLFunctionCtx *pCtx, int32_t index) {
  char *pData = FUNC0(pCtx, index);
  if (pCtx->hasNull && FUNC5(pData, pCtx->inputType)) {
    return;
  }

  STopBotInfo *pRes = FUNC4(pCtx);
  FUNC2(pCtx, 1, 1);
  FUNC3(pRes, pCtx->param[0].i64Key, pData, pCtx->ptsList[index], pCtx->inputType, &pCtx->tagInfo,
                         NULL, 0);

  SResultInfo *pResInfo = FUNC1(pCtx);
  pResInfo->hasResult = DATA_SET_FLAG;
}