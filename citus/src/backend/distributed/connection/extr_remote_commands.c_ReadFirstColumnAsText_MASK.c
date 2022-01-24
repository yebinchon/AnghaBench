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
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ ExecStatusType ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__,int const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

List *
FUNC6(PGresult *queryResult)
{
	List *resultRowList = NIL;
	const int columnIndex = 0;
	int64 rowIndex = 0;
	int64 rowCount = 0;

	ExecStatusType status = FUNC2(queryResult);
	if (status == PGRES_TUPLES_OK)
	{
		rowCount = FUNC1(queryResult);
	}

	for (rowIndex = 0; rowIndex < rowCount; rowIndex++)
	{
		char *rowValue = FUNC0(queryResult, rowIndex, columnIndex);

		StringInfo rowValueString = FUNC5();
		FUNC3(rowValueString, rowValue);

		resultRowList = FUNC4(resultRowList, rowValueString);
	}

	return resultRowList;
}