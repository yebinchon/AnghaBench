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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int QUERY_SEND_FAILED ; 
 int RESPONSE_NOT_OKAY ; 
 int RESPONSE_OKAY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  WARNING ; 

int
FUNC7(MultiConnection *connection, const char *command,
							 PGresult **result)
{
	int querySent = 0;
	PGresult *localResult = NULL;
	bool raiseInterrupts = true;

	querySent = FUNC6(connection, command);
	if (querySent == 0)
	{
		FUNC4(connection, WARNING);
		return QUERY_SEND_FAILED;
	}

	localResult = FUNC1(connection, raiseInterrupts);
	if (!FUNC2(localResult))
	{
		FUNC5(connection, localResult, WARNING);
		FUNC3(localResult);
		FUNC0(connection);
		return RESPONSE_NOT_OKAY;
	}

	/*
	 * store result if result has been set, when the user is not interested in the result
	 * a NULL pointer could be passed and the result will be cleared.
	 */
	if (result != NULL)
	{
		*result = localResult;
	}
	else
	{
		FUNC3(localResult);
		FUNC0(connection);
	}

	return RESPONSE_OKAY;
}