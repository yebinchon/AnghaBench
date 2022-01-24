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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  replace ;
typedef  int /*<<< orphan*/  isNull ;
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_dist_partition_colocationid ; 
 int /*<<< orphan*/  Anum_pg_dist_partition_logicalrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int Natts_pg_dist_partition ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WORKERS_WITH_METADATA ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int*,int,int) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC23(Oid distributedRelationId, uint32 colocationId)
{
	Relation pgDistPartition = NULL;
	HeapTuple heapTuple = NULL;
	TupleDesc tupleDescriptor = NULL;
	SysScanDesc scanDescriptor = NULL;
	bool shouldSyncMetadata = false;
	bool indexOK = true;
	int scanKeyCount = 1;
	ScanKeyData scanKey[1];
	Datum values[Natts_pg_dist_partition];
	bool isNull[Natts_pg_dist_partition];
	bool replace[Natts_pg_dist_partition];

	pgDistPartition = FUNC18(FUNC5(), RowExclusiveLock);
	tupleDescriptor = FUNC8(pgDistPartition);

	FUNC9(&scanKey[0], Anum_pg_dist_partition_logicalrelid,
				BTEqualStrategyNumber, F_OIDEQ, FUNC7(distributedRelationId));

	scanDescriptor = FUNC20(pgDistPartition,
										FUNC4(), indexOK,
										NULL, scanKeyCount, scanKey);

	heapTuple = FUNC22(scanDescriptor);
	if (!FUNC6(heapTuple))
	{
		char *distributedRelationName = FUNC15(distributedRelationId);
		FUNC13(ERROR, (FUNC14("could not find valid entry for relation %s",
							   distributedRelationName)));
	}

	FUNC19(values, 0, sizeof(values));
	FUNC19(isNull, false, sizeof(isNull));
	FUNC19(replace, false, sizeof(replace));

	values[Anum_pg_dist_partition_colocationid - 1] = FUNC12(colocationId);
	isNull[Anum_pg_dist_partition_colocationid - 1] = false;
	replace[Anum_pg_dist_partition_colocationid - 1] = true;

	heapTuple = FUNC17(heapTuple, tupleDescriptor, values, isNull, replace);


	FUNC0(pgDistPartition, &heapTuple->t_self, heapTuple);

	FUNC1(distributedRelationId);

	FUNC3();

	FUNC21(scanDescriptor);
	FUNC16(pgDistPartition, NoLock);

	shouldSyncMetadata = FUNC11(distributedRelationId);
	if (shouldSyncMetadata)
	{
		char *updateColocationIdCommand = FUNC2(distributedRelationId,
																	colocationId);

		FUNC10(WORKERS_WITH_METADATA, updateColocationIdCommand);
	}
}