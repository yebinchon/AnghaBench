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
typedef  int int32 ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_local_groupid ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int GROUP_ID_UPGRADING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ InvalidOid ; 
 int LocalGroupId ; 
 int /*<<< orphan*/  PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

int32
FUNC11(void)
{
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 0;
	HeapTuple heapTuple = NULL;
	TupleDesc tupleDescriptor = NULL;
	int32 groupId = 0;
	Relation pgDistLocalGroupId = NULL;
	Oid localGroupTableOid = InvalidOid;

	FUNC2();

	/*
	 * Already set the group id, no need to read the heap again.
	 */
	if (LocalGroupId != -1)
	{
		return LocalGroupId;
	}

	localGroupTableOid = FUNC4("pg_dist_local_group", PG_CATALOG_NAMESPACE);
	if (localGroupTableOid == InvalidOid)
	{
		return 0;
	}

	pgDistLocalGroupId = FUNC7(localGroupTableOid, AccessShareLock);

	scanDescriptor = FUNC8(pgDistLocalGroupId,
										InvalidOid, false,
										NULL, scanKeyCount, scanKey);

	tupleDescriptor = FUNC3(pgDistLocalGroupId);

	heapTuple = FUNC10(scanDescriptor);

	if (FUNC1(heapTuple))
	{
		bool isNull = false;
		Datum groupIdDatum = FUNC6(heapTuple,
										  Anum_pg_dist_local_groupid,
										  tupleDescriptor, &isNull);

		groupId = FUNC0(groupIdDatum);

		/* set the local cache variable */
		LocalGroupId = groupId;
	}
	else
	{
		/*
		 * Upgrade is happening. When upgrading postgres, pg_dist_local_group is
		 * temporarily empty before citus_finish_pg_upgrade() finishes execution.
		 */
		groupId = GROUP_ID_UPGRADING;
	}

	FUNC9(scanDescriptor);
	FUNC5(pgDistLocalGroupId, AccessShareLock);

	return groupId;
}