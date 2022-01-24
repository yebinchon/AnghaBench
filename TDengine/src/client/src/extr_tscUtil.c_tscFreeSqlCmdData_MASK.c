#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pExprs; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tsBuf; TYPE_3__ colList; TYPE_3__ exprsInfo; int /*<<< orphan*/  fieldsInfo; int /*<<< orphan*/  tagCond; int /*<<< orphan*/  pDataBlocks; } ;
typedef  TYPE_1__ SSqlCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(SSqlCmd* pCmd) {
  pCmd->pDataBlocks = FUNC5(pCmd->pDataBlocks);

  FUNC6(&pCmd->tagCond);
  FUNC3(&pCmd->fieldsInfo);

  FUNC1(pCmd->exprsInfo.pExprs);
  FUNC0(&pCmd->exprsInfo, 0, sizeof(pCmd->exprsInfo));

  FUNC4(&pCmd->colList);
  FUNC0(&pCmd->colList, 0, sizeof(pCmd->colList));

  if (pCmd->tsBuf != NULL) {
    FUNC2(pCmd->tsBuf);
    pCmd->tsBuf = NULL;
  }
}