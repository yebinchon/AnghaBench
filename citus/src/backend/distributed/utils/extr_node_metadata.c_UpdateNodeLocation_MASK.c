#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  replace ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_dist_node_nodeid ; 
 int Anum_pg_dist_node_nodename ; 
 int Anum_pg_dist_node_nodeport ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int Natts_pg_dist_node ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(int32 nodeId, char *newNodeName, int32 newNodePort)
{
	const bool indexOK = true;

	Relation pgDistNode = NULL;
	TupleDesc tupleDescriptor = NULL;
	ScanKeyData scanKey[1];
	SysScanDesc scanDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_node];
	bool isnull[Natts_pg_dist_node];
	bool replace[Natts_pg_dist_node];

	pgDistNode = FUNC14(FUNC5(), RowExclusiveLock);
	tupleDescriptor = FUNC8(pgDistNode);

	FUNC9(&scanKey[0], Anum_pg_dist_node_nodeid,
				BTEqualStrategyNumber, F_INT4EQ, FUNC7(nodeId));

	scanDescriptor = FUNC16(pgDistNode, FUNC4(), indexOK,
										NULL, 1, scanKey);

	heapTuple = FUNC18(scanDescriptor);
	if (!FUNC6(heapTuple))
	{
		FUNC10(ERROR, (FUNC11("could not find valid entry for node \"%s:%d\"",
							   newNodeName, newNodePort)));
	}

	FUNC15(replace, 0, sizeof(replace));

	values[Anum_pg_dist_node_nodeport - 1] = FUNC7(newNodePort);
	isnull[Anum_pg_dist_node_nodeport - 1] = false;
	replace[Anum_pg_dist_node_nodeport - 1] = true;

	values[Anum_pg_dist_node_nodename - 1] = FUNC0(newNodeName);
	isnull[Anum_pg_dist_node_nodename - 1] = false;
	replace[Anum_pg_dist_node_nodename - 1] = true;

	heapTuple = FUNC13(heapTuple, tupleDescriptor, values, isnull, replace);

	FUNC1(pgDistNode, &heapTuple->t_self, heapTuple);

	FUNC2(FUNC5());

	FUNC3();

	FUNC17(scanDescriptor);
	FUNC12(pgDistNode, NoLock);
}