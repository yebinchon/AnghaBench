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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_node_nodename ; 
 int /*<<< orphan*/  Anum_pg_dist_node_nodeport ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_TEXTEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HeapTuple
FUNC11(const char *nodeName, int32 nodePort)
{
	Relation pgDistNode = FUNC7(FUNC1(), AccessShareLock);
	const int scanKeyCount = 2;
	const bool indexOK = false;

	ScanKeyData scanKey[2];
	SysScanDesc scanDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	HeapTuple nodeTuple = NULL;

	FUNC4(&scanKey[0], Anum_pg_dist_node_nodename,
				BTEqualStrategyNumber, F_TEXTEQ, FUNC0(nodeName));
	FUNC4(&scanKey[1], Anum_pg_dist_node_nodeport,
				BTEqualStrategyNumber, F_INT4EQ, FUNC3(nodePort));
	scanDescriptor = FUNC8(pgDistNode, InvalidOid, indexOK,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC10(scanDescriptor);
	if (FUNC2(heapTuple))
	{
		nodeTuple = FUNC6(heapTuple);
	}

	FUNC9(scanDescriptor);
	FUNC5(pgDistNode, NoLock);

	return nodeTuple;
}