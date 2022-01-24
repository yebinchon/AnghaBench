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
struct TYPE_3__ {int groupedByDisjointPartitionColumn; int hasDistinctOn; int groupClauseIsEmpty; int sortClauseIsEmpty; int /*<<< orphan*/  hasOrderByAggregate; int /*<<< orphan*/  canApproximate; } ;
typedef  TYPE_1__ OrderByLimitReference ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 

__attribute__((used)) static OrderByLimitReference
FUNC2(bool hasDistinctOn, bool groupedByDisjointPartitionColumn,
						   List *groupClause, List *sortClauseList, List *targetList)
{
	OrderByLimitReference limitOrderByReference;

	limitOrderByReference.groupedByDisjointPartitionColumn =
		groupedByDisjointPartitionColumn;
	limitOrderByReference.hasDistinctOn = hasDistinctOn;
	limitOrderByReference.groupClauseIsEmpty = (groupClause == NIL);
	limitOrderByReference.sortClauseIsEmpty = (sortClauseList == NIL);
	limitOrderByReference.canApproximate =
		FUNC0(sortClauseList, targetList);
	limitOrderByReference.hasOrderByAggregate =
		FUNC1(sortClauseList, targetList);

	return limitOrderByReference;
}