#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ExplainState {scalar_t__ analyze; } ;
struct TYPE_4__ {TYPE_1__* distributedPlan; } ;
struct TYPE_3__ {int /*<<< orphan*/ * insertSelectSubquery; } ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/ * ParamListInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  IntoClause ;
typedef  TYPE_1__ DistributedPlan ;
typedef  int /*<<< orphan*/  CustomScanState ;
typedef  TYPE_2__ CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,struct ExplainState*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ExplainState*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,struct ExplainState*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(CustomScanState *node, List *ancestors,
								   struct ExplainState *es)
{
	CitusScanState *scanState = (CitusScanState *) node;
	DistributedPlan *distributedPlan = scanState->distributedPlan;
	Query *query = distributedPlan->insertSelectSubquery;
	IntoClause *into = NULL;
	ParamListInfo params = NULL;
	char *queryString = NULL;

	if (es->analyze)
	{
		/* avoiding double execution here is tricky, error out for now */
		FUNC3(ERROR, (FUNC4("EXPLAIN ANALYZE is currently not supported for INSERT "
							   "... SELECT commands via the coordinator")));
	}

	FUNC2("Select Query", "Select Query", false, es);

	/* explain the inner SELECT query */
	FUNC1(query, 0, into, es, queryString, params, NULL);

	FUNC0("Select Query", "Select Query", false, es);
}