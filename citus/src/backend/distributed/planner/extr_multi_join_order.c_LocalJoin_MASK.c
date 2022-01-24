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
struct TYPE_9__ {int /*<<< orphan*/  relationId; int /*<<< orphan*/  rangeTableId; } ;
typedef  TYPE_1__ TableEntry ;
struct TYPE_10__ {char partitionMethod; TYPE_1__* anchorTable; int /*<<< orphan*/ * partitionColumn; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  TYPE_2__ JoinOrderNode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCAL_PARTITION_JOIN ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static JoinOrderNode *
FUNC5(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
		  List *applicableJoinClauses, JoinType joinType)
{
	JoinOrderNode *nextJoinNode = NULL;
	Oid relationId = candidateTable->relationId;
	uint32 tableId = candidateTable->rangeTableId;
	Var *candidatePartitionColumn = FUNC3(relationId, tableId);
	Var *currentPartitionColumn = currentJoinNode->partitionColumn;
	char candidatePartitionMethod = FUNC4(relationId);
	char currentPartitionMethod = currentJoinNode->partitionMethod;
	TableEntry *currentAnchorTable = currentJoinNode->anchorTable;
	bool joinOnPartitionColumns = false;
	bool coPartitionedTables = false;

	/*
	 * If we previously dual-hash re-partitioned the tables for a join or made cartesian
	 * product, there is no anchor table anymore. In that case we don't allow local join.
	 */
	if (currentAnchorTable == NULL)
	{
		return NULL;
	}

	/* the partition method should be the same for a local join */
	if (currentPartitionMethod != candidatePartitionMethod)
	{
		return NULL;
	}

	joinOnPartitionColumns = FUNC1(currentPartitionColumn,
										   candidatePartitionColumn,
										   applicableJoinClauses);
	if (!joinOnPartitionColumns)
	{
		return NULL;
	}

	/* shard interval lists must have 1-1 matching for local joins */
	coPartitionedTables = FUNC0(currentAnchorTable->relationId, relationId);

	if (!coPartitionedTables)
	{
		return NULL;
	}

	nextJoinNode = FUNC2(candidateTable, LOCAL_PARTITION_JOIN,
									 currentPartitionColumn,
									 currentPartitionMethod,
									 currentAnchorTable);


	return nextJoinNode;
}