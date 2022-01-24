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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  newValues ;
typedef  int /*<<< orphan*/  newNulls ;
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_dist_partition_colocationid ; 
 int Anum_pg_dist_partition_logicalrelid ; 
 int Anum_pg_dist_partition_partkey ; 
 int Anum_pg_dist_partition_partmethod ; 
 int Anum_pg_dist_partition_repmodel ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char DISTRIBUTE_BY_NONE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int Natts_pg_dist_partition ; 
 int /*<<< orphan*/  NoLock ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int*,int,int) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 

void
FUNC16(Oid relationId, char distributionMethod,
						  Var *distributionColumn, uint32 colocationId,
						  char replicationModel)
{
	Relation pgDistPartition = NULL;
	char *distributionColumnString = NULL;

	HeapTuple newTuple = NULL;
	Datum newValues[Natts_pg_dist_partition];
	bool newNulls[Natts_pg_dist_partition];

	/* open system catalog and insert new tuple */
	pgDistPartition = FUNC13(FUNC5(), RowExclusiveLock);

	/* form new tuple for pg_dist_partition */
	FUNC14(newValues, 0, sizeof(newValues));
	FUNC14(newNulls, false, sizeof(newNulls));

	newValues[Anum_pg_dist_partition_logicalrelid - 1] =
		FUNC6(relationId);
	newValues[Anum_pg_dist_partition_partmethod - 1] =
		FUNC2(distributionMethod);
	newValues[Anum_pg_dist_partition_colocationid - 1] = FUNC10(colocationId);
	newValues[Anum_pg_dist_partition_repmodel - 1] = FUNC2(replicationModel);

	/* set partkey column to NULL for reference tables */
	if (distributionMethod != DISTRIBUTE_BY_NONE)
	{
		distributionColumnString = FUNC15((Node *) distributionColumn);

		newValues[Anum_pg_dist_partition_partkey - 1] =
			FUNC0(distributionColumnString);
	}
	else
	{
		newValues[Anum_pg_dist_partition_partkey - 1] = FUNC7(NULL);
		newNulls[Anum_pg_dist_partition_partkey - 1] = true;
	}

	newTuple = FUNC12(FUNC9(pgDistPartition), newValues, newNulls);

	/* finally insert tuple, build index entries & register cache invalidation */
	FUNC1(pgDistPartition, newTuple);

	FUNC3(relationId);

	FUNC8(relationId, (Node *) distributionColumn);

	FUNC4();
	FUNC11(pgDistPartition, NoLock);
}