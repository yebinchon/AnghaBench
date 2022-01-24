#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_6__ {int partitionColumnIndex; int /*<<< orphan*/  tableMetadata; int /*<<< orphan*/  distributedRelationId; int /*<<< orphan*/ * columnCoercionPaths; } ;
struct TYPE_5__ {int /*<<< orphan*/  shardId; } ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  CopyCoercionData ;
typedef  TYPE_2__ CitusCopyDestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INVALID_PARTITION_COLUMN_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static uint64
FUNC9(CitusCopyDestReceiver *copyDest, Datum *columnValues, bool *columnNulls)
{
	int partitionColumnIndex = copyDest->partitionColumnIndex;
	Datum partitionColumnValue = 0;
	CopyCoercionData *columnCoercionPaths = copyDest->columnCoercionPaths;
	ShardInterval *shardInterval = NULL;

	/*
	 * Find the partition column value and corresponding shard interval
	 * for non-reference tables.
	 * Get the existing (and only a single) shard interval for the reference
	 * tables. Note that, reference tables has NULL partition column values so
	 * skip the check.
	 */
	if (partitionColumnIndex != INVALID_PARTITION_COLUMN_INDEX)
	{
		CopyCoercionData *coercePath = &columnCoercionPaths[partitionColumnIndex];

		if (columnNulls[partitionColumnIndex])
		{
			Oid relationId = copyDest->distributedRelationId;
			char *relationName = FUNC6(relationId);
			Oid schemaOid = FUNC7(relationId);
			char *schemaName = FUNC5(schemaOid);
			char *qualifiedTableName = FUNC8(schemaName,
																  relationName);

			FUNC2(ERROR, (FUNC3(ERRCODE_NULL_VALUE_NOT_ALLOWED),
							FUNC4("the partition column of table %s cannot be NULL",
								   qualifiedTableName)));
		}

		/* find the partition column value */
		partitionColumnValue = columnValues[partitionColumnIndex];

		/* annoyingly this is evaluated twice, but at least we don't crash! */
		partitionColumnValue = FUNC0(partitionColumnValue, coercePath);
	}

	/*
	 * Find the shard interval and id for the partition column value for
	 * non-reference tables.
	 *
	 * For reference table, this function blindly returns the tables single
	 * shard.
	 */
	shardInterval = FUNC1(partitionColumnValue, copyDest->tableMetadata);
	if (shardInterval == NULL)
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC4("could not find shard for partition column "
							   "value")));
	}

	return shardInterval->shardId;
}