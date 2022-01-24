#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_node_nodename ; 
 int /*<<< orphan*/  Anum_pg_dist_node_nodeport ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_TEXTEQ ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(char *nodeName, int32 nodePort)
{
	const int scanKeyCount = 2;
	bool indexOK = false;

	HeapTuple heapTuple = NULL;
	SysScanDesc heapScan = NULL;
	ScanKeyData scanKey[2];
	Relation pgDistNode = FUNC11(FUNC3(), RowExclusiveLock);

	/*
	 * simple_heap_delete() expects that the caller has at least an
	 * AccessShareLock on replica identity index.
	 */
	Relation replicaIndex = FUNC12(FUNC6(pgDistNode),
									   AccessShareLock);

	FUNC7(&scanKey[0], Anum_pg_dist_node_nodename,
				BTEqualStrategyNumber, F_TEXTEQ, FUNC0(nodeName));
	FUNC7(&scanKey[1], Anum_pg_dist_node_nodeport,
				BTEqualStrategyNumber, F_INT4EQ, FUNC5(nodePort));

	heapScan = FUNC14(pgDistNode, InvalidOid, indexOK,
								  NULL, scanKeyCount, scanKey);

	heapTuple = FUNC16(heapScan);

	if (!FUNC4(heapTuple))
	{
		FUNC8(ERROR, (FUNC9("could not find valid entry for node \"%s:%d\"",
							   nodeName, nodePort)));
	}

	FUNC13(pgDistNode, &(heapTuple->t_self));

	FUNC15(heapScan);

	/* ensure future commands don't use the node we just removed */
	FUNC1(FUNC3());

	/* increment the counter so that next command won't see the row */
	FUNC2();

	FUNC10(replicaIndex, AccessShareLock);
	FUNC10(pgDistNode, NoLock);
}