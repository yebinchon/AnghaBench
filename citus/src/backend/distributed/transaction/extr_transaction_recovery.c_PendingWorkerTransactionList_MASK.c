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
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  MultiConnection ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int const) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static List *
FUNC14(MultiConnection *connection)
{
	StringInfo command = FUNC12();
	bool raiseInterrupts = true;
	int querySent = 0;
	PGresult *result = NULL;
	int rowCount = 0;
	int rowIndex = 0;
	List *transactionNames = NIL;
	int coordinatorId = FUNC1();

	FUNC10(command, "SELECT gid FROM pg_prepared_xacts "
							  "WHERE gid LIKE 'citus\\_%d\\_%%'",
					 coordinatorId);

	querySent = FUNC9(connection, command->data);
	if (querySent == 0)
	{
		FUNC7(connection, ERROR);
	}

	result = FUNC2(connection, raiseInterrupts);
	if (!FUNC3(result))
	{
		FUNC8(connection, result, ERROR);
	}

	rowCount = FUNC6(result);

	for (rowIndex = 0; rowIndex < rowCount; rowIndex++)
	{
		const int columnIndex = 0;
		char *transactionName = FUNC5(result, rowIndex, columnIndex);

		transactionNames = FUNC11(transactionNames, FUNC13(transactionName));
	}

	FUNC4(result);
	FUNC0(connection);

	return transactionNames;
}