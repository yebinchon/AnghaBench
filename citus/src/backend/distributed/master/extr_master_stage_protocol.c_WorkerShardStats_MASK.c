#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  text ;
struct TYPE_6__ {int /*<<< orphan*/  varattno; } ;
typedef  TYPE_1__ Var ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  int /*<<< orphan*/  ShardPlacement ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MultiConnection ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char DISTRIBUTE_BY_APPEND ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int const) ; 
 char FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHARD_CSTORE_TABLE_SIZE_QUERY ; 
 int /*<<< orphan*/  SHARD_RANGE_QUERY ; 
 int /*<<< orphan*/  SHARD_TABLE_SIZE_QUERY ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 scalar_t__ errno ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*) ; 

__attribute__((used)) static bool
FUNC15(ShardPlacement *placement, Oid relationId, char *shardName,
				 uint64 *shardSize, text **shardMinValue, text **shardMaxValue)
{
	char *quotedShardName = NULL;
	bool cstoreTable = false;
	StringInfo tableSizeQuery = FUNC12();

	const uint32 unusedTableId = 1;
	char partitionType = FUNC8(relationId);
	Var *partitionColumn = NULL;
	char *partitionColumnName = NULL;
	StringInfo partitionValueQuery = FUNC12();

	PGresult *queryResult = NULL;
	const int minValueIndex = 0;
	const int maxValueIndex = 1;

	uint64 tableSize = 0;
	char *tableSizeString = NULL;
	char *tableSizeStringEnd = NULL;
	bool minValueIsNull = false;
	bool maxValueIsNull = false;

	int connectionFlags = 0;
	int executeCommand = 0;

	MultiConnection *connection = FUNC3(connectionFlags, placement,
														 NULL);

	*shardSize = 0;
	*shardMinValue = NULL;
	*shardMaxValue = NULL;

	quotedShardName = FUNC14(shardName);

	cstoreTable = FUNC0(relationId);
	if (cstoreTable)
	{
		FUNC9(tableSizeQuery, SHARD_CSTORE_TABLE_SIZE_QUERY, quotedShardName);
	}
	else
	{
		FUNC9(tableSizeQuery, SHARD_TABLE_SIZE_QUERY, quotedShardName);
	}

	executeCommand = FUNC1(connection, tableSizeQuery->data,
												  &queryResult);
	if (executeCommand != 0)
	{
		return false;
	}

	tableSizeString = FUNC6(queryResult, 0, 0);
	if (tableSizeString == NULL)
	{
		FUNC4(queryResult);
		FUNC2(connection);
		return false;
	}

	errno = 0;
	tableSize = FUNC13(tableSizeString, &tableSizeStringEnd, 0);
	if (errno != 0 || (*tableSizeStringEnd) != '\0')
	{
		FUNC4(queryResult);
		FUNC2(connection);
		return false;
	}

	*shardSize = tableSize;

	FUNC4(queryResult);
	FUNC2(connection);

	if (partitionType != DISTRIBUTE_BY_APPEND)
	{
		/* we don't need min/max for non-append distributed tables */
		return true;
	}

	/* fill in the partition column name and shard name in the query. */
	partitionColumn = FUNC7(relationId, unusedTableId);
	partitionColumnName = FUNC11(relationId, partitionColumn->varattno, false);
	FUNC9(partitionValueQuery, SHARD_RANGE_QUERY,
					 partitionColumnName, partitionColumnName, shardName);

	executeCommand = FUNC1(connection, partitionValueQuery->data,
												  &queryResult);
	if (executeCommand != 0)
	{
		return false;
	}

	minValueIsNull = FUNC5(queryResult, 0, minValueIndex);
	maxValueIsNull = FUNC5(queryResult, 0, maxValueIndex);

	if (!minValueIsNull && !maxValueIsNull)
	{
		char *minValueResult = FUNC6(queryResult, 0, minValueIndex);
		char *maxValueResult = FUNC6(queryResult, 0, maxValueIndex);

		*shardMinValue = FUNC10(minValueResult);
		*shardMaxValue = FUNC10(maxValueResult);
	}

	FUNC4(queryResult);
	FUNC2(connection);

	return true;
}