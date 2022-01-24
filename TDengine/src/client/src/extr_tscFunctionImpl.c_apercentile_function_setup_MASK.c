#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pHisto; } ;
typedef  int /*<<< orphan*/  SQLFunctionCtx ;
typedef  TYPE_1__ SAPercentileInfo ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_HISTOGRAM_BIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(SQLFunctionCtx *pCtx) {
  if (!FUNC0(pCtx)) {
    return false;
  }

  SAPercentileInfo *pInfo = FUNC1(pCtx);

  char *tmp = (char *)pInfo + sizeof(SAPercentileInfo);
  pInfo->pHisto = FUNC2(tmp, MAX_HISTOGRAM_BIN);
  return true;
}