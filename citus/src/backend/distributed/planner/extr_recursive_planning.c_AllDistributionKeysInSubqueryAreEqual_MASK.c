#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ cteList; } ;
typedef  TYPE_1__ Query ;
typedef  int /*<<< orphan*/  PlannerRestrictionContext ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ NIL ; 

__attribute__((used)) static bool
FUNC2(Query *subquery,
									  PlannerRestrictionContext *restrictionContext)
{
	bool allDistributionKeysInSubqueryAreEqual = false;
	PlannerRestrictionContext *filteredRestrictionContext = NULL;

	/* we don't support distribution eq. checks for CTEs yet */
	if (subquery->cteList != NIL)
	{
		return false;
	}

	filteredRestrictionContext =
		FUNC1(restrictionContext, subquery);

	allDistributionKeysInSubqueryAreEqual =
		FUNC0(subquery, filteredRestrictionContext);
	if (!allDistributionKeysInSubqueryAreEqual)
	{
		return false;
	}

	return true;
}