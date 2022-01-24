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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  isNulls ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_dist_shard_logicalrelid ; 
 int Anum_pg_dist_shard_shardalias_DROPPED ; 
 int Anum_pg_dist_shard_shardid ; 
 int Anum_pg_dist_shard_shardmaxvalue ; 
 int Anum_pg_dist_shard_shardminvalue ; 
 int Anum_pg_dist_shard_shardstorage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int Natts_pg_dist_shard ; 
 int /*<<< orphan*/  NoLock ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int,int) ; 

void
FUNC13(Oid relationId, uint64 shardId, char storageType,
			   text *shardMinValue, text *shardMaxValue)
{
	Relation pgDistShard = NULL;
	TupleDesc tupleDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_shard];
	bool isNulls[Natts_pg_dist_shard];

	/* form new shard tuple */
	FUNC12(values, 0, sizeof(values));
	FUNC12(isNulls, false, sizeof(isNulls));

	values[Anum_pg_dist_shard_logicalrelid - 1] = FUNC6(relationId);
	values[Anum_pg_dist_shard_shardid - 1] = FUNC5(shardId);
	values[Anum_pg_dist_shard_shardstorage - 1] = FUNC1(storageType);

	/* dropped shardalias column must also be set; it is still part of the tuple */
	isNulls[Anum_pg_dist_shard_shardalias_DROPPED - 1] = true;

	/* check if shard min/max values are null */
	if (shardMinValue != NULL && shardMaxValue != NULL)
	{
		values[Anum_pg_dist_shard_shardminvalue - 1] = FUNC7(shardMinValue);
		values[Anum_pg_dist_shard_shardmaxvalue - 1] = FUNC7(shardMaxValue);
	}
	else
	{
		isNulls[Anum_pg_dist_shard_shardminvalue - 1] = true;
		isNulls[Anum_pg_dist_shard_shardmaxvalue - 1] = true;
	}

	/* open shard relation and insert new tuple */
	pgDistShard = FUNC11(FUNC4(), RowExclusiveLock);

	tupleDescriptor = FUNC8(pgDistShard);
	heapTuple = FUNC10(tupleDescriptor, values, isNulls);

	FUNC0(pgDistShard, heapTuple);

	/* invalidate previous cache entry and close relation */
	FUNC2(relationId);

	FUNC3();
	FUNC9(pgDistShard, NoLock);
}