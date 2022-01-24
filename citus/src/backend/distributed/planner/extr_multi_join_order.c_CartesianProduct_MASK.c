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
typedef  int /*<<< orphan*/  TableEntry ;
struct TYPE_5__ {int /*<<< orphan*/  partitionMethod; int /*<<< orphan*/  partitionColumn; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  TYPE_1__ JoinOrderNode ;

/* Variables and functions */
 int /*<<< orphan*/  CARTESIAN_PRODUCT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static JoinOrderNode *
FUNC2(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
				 List *applicableJoinClauses, JoinType joinType)
{
	if (FUNC1(applicableJoinClauses) == 0)
	{
		/* Because of the cartesian product, anchor table information got lost */
		return FUNC0(candidateTable, CARTESIAN_PRODUCT,
								 currentJoinNode->partitionColumn,
								 currentJoinNode->partitionMethod,
								 NULL);
	}

	return NULL;
}