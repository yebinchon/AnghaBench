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
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_node_metadata_metadata ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 

Datum
FUNC12(void)
{
	Datum metadata = 0;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	const int scanKeyCount = 0;
	HeapTuple heapTuple = NULL;
	Oid metadataTableOid = InvalidOid;
	Relation pgDistNodeMetadata = NULL;
	TupleDesc tupleDescriptor = NULL;

	metadataTableOid = FUNC5("pg_dist_node_metadata",
										 PG_CATALOG_NAMESPACE);
	if (metadataTableOid == InvalidOid)
	{
		FUNC3(ERROR, (FUNC4("pg_dist_node_metadata was not found")));
	}

	pgDistNodeMetadata = FUNC8(metadataTableOid, AccessShareLock);
	scanDescriptor = FUNC9(pgDistNodeMetadata,
										InvalidOid, false,
										NULL, scanKeyCount, scanKey);
	tupleDescriptor = FUNC2(pgDistNodeMetadata);

	heapTuple = FUNC11(scanDescriptor);
	if (FUNC1(heapTuple))
	{
		bool isNull = false;
		metadata = FUNC7(heapTuple, Anum_pg_dist_node_metadata_metadata,
								tupleDescriptor, &isNull);
		FUNC0(!isNull);
	}
	else
	{
		FUNC3(ERROR, (FUNC4(
							"could not find any entries in pg_dist_metadata")));
	}

	FUNC10(scanDescriptor);
	FUNC6(pgDistNodeMetadata, AccessShareLock);

	return metadata;
}