#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TableEntry ;
typedef  int /*<<< orphan*/  OpExpr ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  int /*<<< orphan*/  JoinOrderNode ;

/* Variables and functions */
 int /*<<< orphan*/  DUAL_PARTITION_JOIN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REDISTRIBUTE_BY_HASH ; 

__attribute__((used)) static JoinOrderNode *
FUNC2(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
				  List *applicableJoinClauses, JoinType joinType)
{
	OpExpr *joinClause = FUNC0(applicableJoinClauses);
	if (joinClause)
	{
		/* because of the dual partition, anchor table and partition column get lost */
		return FUNC1(candidateTable,
								 DUAL_PARTITION_JOIN,
								 NULL,
								 REDISTRIBUTE_BY_HASH,
								 NULL);
	}

	return NULL;
}