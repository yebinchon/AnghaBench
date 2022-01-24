#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  pgConn; } ;
struct TYPE_17__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FORCE_NEW_CONNECTION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 long RemoteTaskCheckInterval ; 
 int FUNC5 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*,int) ; 
 TYPE_2__** FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC11 (long) ; 

__attribute__((used)) static void
FUNC12(StringInfo *nodeNameArray, int *nodePortArray,
										 StringInfo *commandStringArray,
										 bool *statusArray, StringInfo *resultStringArray,
										 int commmandCount)
{
	int commandIndex = 0;
	MultiConnection **connectionArray =
		FUNC9(commmandCount * sizeof(MultiConnection *));
	int finishedCount = 0;

	/* start connections asynchronously */
	for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
	{
		char *nodeName = nodeNameArray[commandIndex]->data;
		int nodePort = nodePortArray[commandIndex];
		int connectionFlags = FORCE_NEW_CONNECTION;
		connectionArray[commandIndex] =
			FUNC6(connectionFlags, nodeName, nodePort);
	}

	/* establish connections */
	for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
	{
		MultiConnection *connection = connectionArray[commandIndex];
		StringInfo queryResultString = resultStringArray[commandIndex];
		char *nodeName = nodeNameArray[commandIndex]->data;
		int nodePort = nodePortArray[commandIndex];

		FUNC2(connection);

		if (FUNC4(connection->pgConn) != CONNECTION_OK)
		{
			FUNC8(queryResultString, "failed to connect to %s:%d", nodeName,
							 (int) nodePort);
			statusArray[commandIndex] = false;
			connectionArray[commandIndex] = NULL;
			finishedCount++;
		}
		else
		{
			statusArray[commandIndex] = true;
		}
	}

	/* send queries at once */
	for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
	{
		int querySent = 0;
		MultiConnection *connection = connectionArray[commandIndex];
		char *queryString = commandStringArray[commandIndex]->data;
		StringInfo queryResultString = resultStringArray[commandIndex];

		/*
		 * If we don't have a connection, nothing to send, error string should already
		 * been filled.
		 */
		if (connection == NULL)
		{
			continue;
		}

		querySent = FUNC5(connection, queryString);
		if (querySent == 0)
		{
			FUNC7(connection, queryResultString);
			statusArray[commandIndex] = false;
			FUNC1(connection);
			connectionArray[commandIndex] = NULL;
			finishedCount++;
		}
	}

	/* check for query results */
	while (finishedCount < commmandCount)
	{
		for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
		{
			MultiConnection *connection = connectionArray[commandIndex];
			StringInfo queryResultString = resultStringArray[commandIndex];
			bool success = false;
			bool queryFinished = false;

			if (connection == NULL)
			{
				continue;
			}

			queryFinished = FUNC3(connection, &success,
														 queryResultString);

			if (queryFinished)
			{
				finishedCount++;
				statusArray[commandIndex] = success;
				connectionArray[commandIndex] = NULL;
				FUNC1(connection);
			}
		}

		FUNC0();

		if (finishedCount < commmandCount)
		{
			long sleepIntervalPerCycle = RemoteTaskCheckInterval * 1000L;
			FUNC11(sleepIntervalPerCycle);
		}
	}

	FUNC10(connectionArray);
}