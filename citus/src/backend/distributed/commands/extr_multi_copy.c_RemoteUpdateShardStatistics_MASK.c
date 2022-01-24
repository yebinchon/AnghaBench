#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPDATE_SHARD_STATISTICS_QUERY ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  masterConnection ; 

__attribute__((used)) static void
FUNC10(uint64 shardId)
{
	PGresult *queryResult = NULL;
	bool raiseInterrupts = true;

	StringInfo updateShardStatisticsCommand = FUNC9();
	FUNC6(updateShardStatisticsCommand, UPDATE_SHARD_STATISTICS_QUERY,
					 shardId);

	if (!FUNC5(masterConnection, updateShardStatisticsCommand->data))
	{
		FUNC4(masterConnection, ERROR);
	}
	queryResult = FUNC1(masterConnection, raiseInterrupts);
	if (FUNC3(queryResult) != PGRES_TUPLES_OK)
	{
		FUNC7(ERROR, (FUNC8("could not update shard statistics")));
	}

	FUNC2(queryResult);
	queryResult = FUNC1(masterConnection, raiseInterrupts);
	FUNC0(!queryResult);
}