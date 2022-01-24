#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ jointree; int /*<<< orphan*/  rtable; int /*<<< orphan*/  resultRelation; } ;
struct TYPE_6__ {int /*<<< orphan*/  relid; } ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  PlannerRestrictionContext ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  DeferredErrorMessage ;

/* Variables and functions */
 int /*<<< orphan*/  CitusIsVolatileFunction ; 
 char DISTRIBUTE_BY_NONE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DeferredErrorMessage *
FUNC6(Query *originalQuery,
							   PlannerRestrictionContext *plannerRestrictionContext)
{
	DeferredErrorMessage *errorMessage = NULL;
	RangeTblEntry *resultRangeTable = FUNC5(originalQuery->resultRelation,
											   originalQuery->rtable);
	Oid resultRelationOid = resultRangeTable->relid;
	char resultPartitionMethod = FUNC4(resultRelationOid);

	if (FUNC3(originalQuery->rtable, (Node *) originalQuery->jointree))
	{
		errorMessage = FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED,
									 "a join with USING causes an internal naming conflict, use "
									 "ON instead",
									 NULL, NULL);
	}
	else if (FUNC2((Node *) originalQuery, CitusIsVolatileFunction))
	{
		errorMessage = FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED,
									 "functions used in UPDATE queries on distributed "
									 "tables must not be VOLATILE",
									 NULL, NULL);
	}
	else if (resultPartitionMethod == DISTRIBUTE_BY_NONE)
	{
		errorMessage = FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED,
									 "only reference tables may be queried when targeting "
									 "a reference table with multi shard UPDATE/DELETE queries "
									 "with multiple tables ",
									 NULL, NULL);
	}
	else
	{
		errorMessage = FUNC0(originalQuery,
															   plannerRestrictionContext);
	}

	return errorMessage;
}