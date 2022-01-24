#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replace ;
typedef  int /*<<< orphan*/  isnull ;
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__* HeapTuple ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  CatalogIndexState ;

/* Variables and functions */
 int Anum_pg_dist_node_hasmetadata ; 
 int Anum_pg_dist_node_metadatasynced ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  F_BOOLEQ ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int Natts_pg_dist_node ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC17(void)
{
	bool updatedAtLeastOne = false;
	Relation relation = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[2];
	int scanKeyCount = 2;
	bool indexOK = false;
	HeapTuple heapTuple = NULL;
	TupleDesc tupleDescriptor = NULL;
	CatalogIndexState indstate;

	/*
	 * Concurrent master_update_node() calls might iterate and try to update
	 * pg_dist_node in different orders. To protect against deadlock, we
	 * get an exclusive lock here.
	 */
	relation = FUNC12(FUNC5(), ExclusiveLock);
	tupleDescriptor = FUNC7(relation);
	FUNC8(&scanKey[0], Anum_pg_dist_node_hasmetadata,
				BTEqualStrategyNumber, F_BOOLEQ, FUNC0(true));
	FUNC8(&scanKey[1], Anum_pg_dist_node_metadatasynced,
				BTEqualStrategyNumber, F_BOOLEQ, FUNC0(true));

	indstate = FUNC2(relation);

	scanDescriptor = FUNC14(relation,
										InvalidOid, indexOK,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC16(scanDescriptor);
	if (FUNC6(heapTuple))
	{
		updatedAtLeastOne = true;
	}

	while (FUNC6(heapTuple))
	{
		HeapTuple newHeapTuple = NULL;
		Datum values[Natts_pg_dist_node];
		bool isnull[Natts_pg_dist_node];
		bool replace[Natts_pg_dist_node];

		FUNC13(replace, false, sizeof(replace));
		FUNC13(isnull, false, sizeof(isnull));
		FUNC13(values, 0, sizeof(values));

		values[Anum_pg_dist_node_metadatasynced - 1] = FUNC0(false);
		replace[Anum_pg_dist_node_metadatasynced - 1] = true;

		newHeapTuple = FUNC11(heapTuple, tupleDescriptor, values, isnull,
										 replace);

		FUNC3(relation, &newHeapTuple->t_self, newHeapTuple,
								   indstate);

		FUNC4();

		FUNC10(newHeapTuple);

		heapTuple = FUNC16(scanDescriptor);
	}

	FUNC15(scanDescriptor);
	FUNC1(indstate);
	FUNC9(relation, NoLock);

	return updatedAtLeastOne;
}