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
 int /*<<< orphan*/  Anum_pg_dist_node_nodename ; 
 int /*<<< orphan*/  Anum_pg_dist_node_nodeport ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_TEXTEQ ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
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
FUNC19(char *nodeName, int32 nodePort, int attrNum, bool value)
{
	const bool indexOK = false;

	Relation pgDistNode = NULL;
	TupleDesc tupleDescriptor = NULL;
	ScanKeyData scanKey[2];
	SysScanDesc scanDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_node];
	bool isnull[Natts_pg_dist_node];
	bool replace[Natts_pg_dist_node];

	pgDistNode = FUNC14(FUNC5(), RowExclusiveLock);
	tupleDescriptor = FUNC8(pgDistNode);

	FUNC9(&scanKey[0], Anum_pg_dist_node_nodename,
				BTEqualStrategyNumber, F_TEXTEQ, FUNC1(nodeName));
	FUNC9(&scanKey[1], Anum_pg_dist_node_nodeport,
				BTEqualStrategyNumber, F_INT4EQ, FUNC7(nodePort));

	scanDescriptor = FUNC16(pgDistNode, InvalidOid, indexOK,
										NULL, 2, scanKey);

	heapTuple = FUNC18(scanDescriptor);
	if (!FUNC6(heapTuple))
	{
		FUNC10(ERROR, (FUNC11("could not find valid entry for node \"%s:%d\"",
							   nodeName, nodePort)));
	}

	FUNC15(replace, 0, sizeof(replace));

	values[attrNum - 1] = FUNC0(value);
	isnull[attrNum - 1] = false;
	replace[attrNum - 1] = true;

	heapTuple = FUNC13(heapTuple, tupleDescriptor, values, isnull, replace);

	FUNC2(pgDistNode, &heapTuple->t_self, heapTuple);

	FUNC3(FUNC5());

	FUNC4();

	FUNC17(scanDescriptor);
	FUNC12(pgDistNode, NoLock);
}