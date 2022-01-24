#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  Var ;
struct TYPE_9__ {int /*<<< orphan*/  rangeTableId; int /*<<< orphan*/  relationId; } ;
typedef  TYPE_1__ TableEntry ;
struct TYPE_10__ {char partitionMethod; scalar_t__ joinRuleType; TYPE_1__* anchorTable; int /*<<< orphan*/ * partitionColumn; } ;
typedef  int /*<<< orphan*/  OpExpr ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  scalar_t__ JoinRuleType ;
typedef  TYPE_2__ JoinOrderNode ;

/* Variables and functions */
 scalar_t__ CARTESIAN_PRODUCT ; 
 char DISTRIBUTE_BY_HASH ; 
 char DISTRIBUTE_BY_NONE ; 
 scalar_t__ DUAL_PARTITION_JOIN ; 
 int /*<<< orphan*/  EnableSingleHashRepartitioning ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SINGLE_HASH_PARTITION_JOIN ; 
 int /*<<< orphan*/  SINGLE_RANGE_PARTITION_JOIN ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static JoinOrderNode *
FUNC5(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
					List *applicableJoinClauses, JoinType joinType)
{
	Var *currentPartitionColumn = currentJoinNode->partitionColumn;
	char currentPartitionMethod = currentJoinNode->partitionMethod;
	TableEntry *currentAnchorTable = currentJoinNode->anchorTable;
	JoinRuleType currentJoinRuleType = currentJoinNode->joinRuleType;

	OpExpr *joinClause = NULL;

	Oid relationId = candidateTable->relationId;
	uint32 tableId = candidateTable->rangeTableId;
	Var *candidatePartitionColumn = FUNC2(relationId, tableId);
	char candidatePartitionMethod = FUNC3(relationId);

	/* outer joins are not supported yet */
	if (FUNC0(joinType))
	{
		return NULL;
	}

	/*
	 * If we previously dual-hash re-partitioned the tables for a join or made
	 * cartesian product, we currently don't allow a single-repartition join.
	 */
	if (currentJoinRuleType == DUAL_PARTITION_JOIN ||
		currentJoinRuleType == CARTESIAN_PRODUCT)
	{
		return NULL;
	}

	joinClause =
		FUNC4(currentPartitionColumn, applicableJoinClauses);
	if (joinClause != NULL)
	{
		if (currentPartitionMethod == DISTRIBUTE_BY_HASH)
		{
			/*
			 * Single hash repartitioning may perform worse than dual hash
			 * repartitioning. Thus, we control it via a guc.
			 */
			if (!EnableSingleHashRepartitioning)
			{
				return NULL;
			}

			return FUNC1(candidateTable, SINGLE_HASH_PARTITION_JOIN,
									 currentPartitionColumn,
									 currentPartitionMethod,
									 currentAnchorTable);
		}
		else
		{
			return FUNC1(candidateTable, SINGLE_RANGE_PARTITION_JOIN,
									 currentPartitionColumn,
									 currentPartitionMethod,
									 currentAnchorTable);
		}
	}

	/* evaluate re-partitioning the current table only if the rule didn't apply above */
	if (candidatePartitionMethod != DISTRIBUTE_BY_NONE)
	{
		joinClause = FUNC4(candidatePartitionColumn,
											   applicableJoinClauses);
		if (joinClause != NULL)
		{
			if (candidatePartitionMethod == DISTRIBUTE_BY_HASH)
			{
				/*
				 * Single hash repartitioning may perform worse than dual hash
				 * repartitioning. Thus, we control it via a guc.
				 */
				if (!EnableSingleHashRepartitioning)
				{
					return NULL;
				}

				return FUNC1(candidateTable,
										 SINGLE_HASH_PARTITION_JOIN,
										 candidatePartitionColumn,
										 candidatePartitionMethod,
										 candidateTable);
			}
			else
			{
				return FUNC1(candidateTable,
										 SINGLE_RANGE_PARTITION_JOIN,
										 candidatePartitionColumn,
										 candidatePartitionMethod,
										 candidateTable);
			}
		}
	}

	return NULL;
}