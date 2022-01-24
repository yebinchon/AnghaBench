#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  order; } ;
struct TYPE_21__ {scalar_t__ ekey; scalar_t__ skey; TYPE_1__ order; } ;
struct TYPE_20__ {int /*<<< orphan*/  startPos; int /*<<< orphan*/  endPos; TYPE_4__* pQuery; } ;
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_2__ SQueryStatus ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  TYPE_4__ SQuery ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC11(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *     pQuery = pRuntimeEnv->pQuery;
  SQueryStatus qStatus = {0};

  if (!FUNC8(pQuery)) {
    return;
  }

  FUNC2(pRuntimeEnv);

  // usually this load operation will incure load disk block operation
  TSKEY endKey = FUNC7(pRuntimeEnv, &pRuntimeEnv->endPos);
  FUNC3((FUNC0(pQuery) && endKey <= pQuery->ekey) ||
         (!FUNC0(pQuery) && endKey >= pQuery->ekey));

  // close necessary function execution during supplementary scan
  FUNC4(pRuntimeEnv, pQuery->order.order);
  FUNC10(pRuntimeEnv, &qStatus);

  FUNC5(pRuntimeEnv);

  // set the correct start position, and load the corresponding block in buffer if required.
  TSKEY actKey = FUNC7(pRuntimeEnv, &pRuntimeEnv->startPos);
  FUNC3((FUNC0(pQuery) && actKey >= pQuery->skey) ||
         (!FUNC0(pQuery) && actKey <= pQuery->skey));

  FUNC9(pRuntimeEnv, &qStatus);
  FUNC6(pRuntimeEnv, pQuery->order.order);
  FUNC1(pRuntimeEnv);
}