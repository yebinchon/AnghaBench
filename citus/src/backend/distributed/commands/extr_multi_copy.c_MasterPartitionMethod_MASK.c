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
struct TYPE_7__ {char* relname; char* schemaname; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ RangeVar ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PARTITION_METHOD_QUERY ; 
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
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_1__* FUNC11 () ; 
 int /*<<< orphan*/  masterConnection ; 
 char* FUNC12 (char*,char*) ; 

__attribute__((used)) static char
FUNC13(RangeVar *relation)
{
	char partitionMethod = '\0';
	PGresult *queryResult = NULL;
	bool raiseInterrupts = true;

	char *relationName = relation->relname;
	char *schemaName = relation->schemaname;
	char *qualifiedName = FUNC12(schemaName, relationName);

	StringInfo partitionMethodCommand = FUNC11();
	FUNC8(partitionMethodCommand, PARTITION_METHOD_QUERY, qualifiedName);

	if (!FUNC7(masterConnection, partitionMethodCommand->data))
	{
		FUNC5(masterConnection, ERROR);
	}
	queryResult = FUNC1(masterConnection, raiseInterrupts);
	if (FUNC4(queryResult) == PGRES_TUPLES_OK)
	{
		char *partitionMethodString = FUNC3((PGresult *) queryResult, 0, 0);
		if (partitionMethodString == NULL || (*partitionMethodString) == '\0')
		{
			FUNC9(ERROR, (FUNC10("could not find a partition method for the "
								   "table %s", relationName)));
		}

		partitionMethod = partitionMethodString[0];
	}
	else
	{
		FUNC6(masterConnection, queryResult, WARNING);
		FUNC9(ERROR, (FUNC10("could not get the partition method of the "
							   "distributed table")));
	}

	FUNC2(queryResult);

	queryResult = FUNC1(masterConnection, raiseInterrupts);
	FUNC0(!queryResult);

	return partitionMethod;
}