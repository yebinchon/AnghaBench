#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tOrderDescriptor ;
typedef  int /*<<< orphan*/  tColModel ;
typedef  int int32_t ;
struct TYPE_13__ {int /*<<< orphan*/  pMemBucket; } ;
struct TYPE_12__ {int /*<<< orphan*/  inputType; int /*<<< orphan*/  inputBytes; } ;
struct TYPE_11__ {scalar_t__ interResultBuf; } ;
struct TYPE_10__ {char* member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SSchema ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;
typedef  TYPE_4__ SPercentileInfo ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  TSQL_SO_DESC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int*,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(SQLFunctionCtx *pCtx) {
  const int32_t MAX_AVAILABLE_BUFFER_SIZE = 1 << 20;  // 1MB
  const int32_t NUMOFCOLS = 1;

  if (!FUNC1(pCtx)) {
    return false;
  }

  SResultInfo *pResInfo = FUNC0(pCtx);
  SSchema      field[1] = {{pCtx->inputType, "dummyCol", 0, pCtx->inputBytes}};

  tColModel *pModel = FUNC2(field, 1, 1000);
  int32_t    orderIdx = 0;

  // tOrderDesc object
  tOrderDescriptor *pDesc = FUNC4(&orderIdx, NUMOFCOLS, pModel, TSQL_SO_DESC);

  ((SPercentileInfo *)(pResInfo->interResultBuf))->pMemBucket =
      FUNC3(1024, MAX_AVAILABLE_BUFFER_SIZE, pCtx->inputBytes, pCtx->inputType, pDesc);

  return true;
}