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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {char* workerName; int /*<<< orphan*/  workerPort; } ;
typedef  TYPE_1__ WorkerNode ;
struct TYPE_7__ {char* data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MultiConnection ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64
FUNC12(WorkerNode *workerNode, Oid relationId, char *sizeQuery)
{
	StringInfo tableSizeQuery = NULL;
	StringInfo tableSizeStringInfo = NULL;
	char *workerNodeName = workerNode->workerName;
	uint32 workerNodePort = workerNode->workerPort;
	char *tableSizeString;
	uint64 tableSize = 0;
	MultiConnection *connection = NULL;
	uint32 connectionFlag = 0;
	PGresult *result = NULL;
	int queryResult = 0;
	List *sizeList = NIL;
	bool raiseErrors = true;

	List *shardIntervalsOnNode = FUNC6(workerNode, relationId);

	tableSizeQuery = FUNC2(relationId,
														   shardIntervalsOnNode,
														   sizeQuery);

	connection = FUNC3(connectionFlag, workerNodeName, workerNodePort);
	queryResult = FUNC1(connection, tableSizeQuery->data, &result);

	if (queryResult != 0)
	{
		FUNC8(ERROR, (FUNC9(ERRCODE_CONNECTION_FAILURE),
						FUNC10("cannot get the size because of a connection error")));
	}

	sizeList = FUNC5(result);
	tableSizeStringInfo = (StringInfo) FUNC11(sizeList);
	tableSizeString = tableSizeStringInfo->data;
	tableSize = FUNC7(tableSizeString);

	FUNC4(result);
	FUNC0(connection, raiseErrors);

	return tableSize;
}