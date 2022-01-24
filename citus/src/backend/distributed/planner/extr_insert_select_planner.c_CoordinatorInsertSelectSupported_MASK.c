#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ targetList; } ;
struct TYPE_10__ {scalar_t__ subquery; int /*<<< orphan*/  relid; } ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  DeferredErrorMessage ;

/* Variables and functions */
 scalar_t__ DISTRIBUTE_BY_APPEND ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DeferredErrorMessage *
FUNC7(Query *insertSelectQuery)
{
	RangeTblEntry *insertRte = NULL;
	RangeTblEntry *subqueryRte = NULL;
	Query *subquery = NULL;
	DeferredErrorMessage *deferredError = NULL;

	deferredError = FUNC1(insertSelectQuery);
	if (deferredError)
	{
		return deferredError;
	}

	insertRte = FUNC2(insertSelectQuery);
	if (FUNC5(insertRte->relid) == DISTRIBUTE_BY_APPEND)
	{
		return FUNC0(ERRCODE_FEATURE_NOT_SUPPORTED,
							 "INSERT ... SELECT into an append-distributed table is "
							 "not supported", NULL, NULL);
	}

	subqueryRte = FUNC3(insertSelectQuery);
	subquery = (Query *) subqueryRte->subquery;

	if (FUNC4(subquery) &&
		FUNC6((Node *) insertSelectQuery->targetList, NULL))
	{
		return FUNC0(ERRCODE_FEATURE_NOT_SUPPORTED,
							 "INSERT ... SELECT cannot generate sequence values when "
							 "selecting from a distributed table",
							 NULL, NULL);
	}

	return NULL;
}