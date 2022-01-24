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
struct TYPE_7__ {TYPE_1__* jointree; } ;
struct TYPE_6__ {int /*<<< orphan*/ * quals; } ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Const ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC6(Query *query, Const **partitionValueConst,
									bool *isMultiShardQuery)
{
	Const *queryPartitionValueConst = NULL;

	Oid relationId = FUNC1(query);
	Node *quals = query->jointree->quals;

	int relationIndex = 1;

	List *prunedShardIntervalList =
		FUNC3(relationId, relationIndex, FUNC5((Expr *) quals),
					&queryPartitionValueConst);

	/* we're only expecting single shard from a single table */
	FUNC0(FUNC2(query));

	if (FUNC4(prunedShardIntervalList) > 1)
	{
		*isMultiShardQuery = true;
	}
	else if (FUNC4(prunedShardIntervalList) == 1 &&
			 partitionValueConst != NULL)
	{
		/* set the outgoing partition column value if requested */
		*partitionValueConst = queryPartitionValueConst;
	}

	return prunedShardIntervalList;
}