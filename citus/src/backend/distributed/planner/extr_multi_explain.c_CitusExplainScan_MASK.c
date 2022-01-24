#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ExplainState {int indent; int /*<<< orphan*/  str; } ;
struct TYPE_5__ {TYPE_1__* distributedPlan; } ;
struct TYPE_4__ {scalar_t__ subPlanList; int /*<<< orphan*/  workerJob; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ DistributedPlan ;
typedef  int /*<<< orphan*/  CustomScanState ;
typedef  TYPE_2__ CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,struct ExplainState*) ; 
 int /*<<< orphan*/  ExplainDistributedQueries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ExplainState*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,struct ExplainState*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ExplainState*) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(CustomScanState *node, List *ancestors, struct ExplainState *es)
{
	CitusScanState *scanState = (CitusScanState *) node;
	DistributedPlan *distributedPlan = scanState->distributedPlan;

	if (!ExplainDistributedQueries)
	{
		FUNC5(es->str, es->indent * 2);
		FUNC4(es->str, "explain statements for distributed queries ");
		FUNC4(es->str, "are not enabled\n");
		return;
	}

	FUNC2("Distributed Query", "Distributed Query", true, es);

	if (distributedPlan->subPlanList != NIL)
	{
		FUNC3(distributedPlan, es);
	}

	FUNC1(distributedPlan->workerJob, es);

	FUNC0("Distributed Query", "Distributed Query", true, es);
}