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
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CREATE_EMPTY_SHARD_QUERY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_1__* FUNC11 () ; 
 int /*<<< orphan*/  masterConnection ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64
FUNC13(char *relationName)
{
	int64 shardId = 0;
	PGresult *queryResult = NULL;
	bool raiseInterrupts = true;

	StringInfo createEmptyShardCommand = FUNC11();
	FUNC8(createEmptyShardCommand, CREATE_EMPTY_SHARD_QUERY, relationName);

	if (!FUNC7(masterConnection, createEmptyShardCommand->data))
	{
		FUNC5(masterConnection, ERROR);
	}
	queryResult = FUNC1(masterConnection, raiseInterrupts);
	if (FUNC4(queryResult) == PGRES_TUPLES_OK)
	{
		char *shardIdString = FUNC3((PGresult *) queryResult, 0, 0);
		char *shardIdStringEnd = NULL;
		shardId = FUNC12(shardIdString, &shardIdStringEnd, 0);
	}
	else
	{
		FUNC6(masterConnection, queryResult, WARNING);
		FUNC9(ERROR, (FUNC10("could not create a new empty shard on the remote node")));
	}

	FUNC2(queryResult);
	queryResult = FUNC1(masterConnection, raiseInterrupts);
	FUNC0(!queryResult);

	return shardId;
}