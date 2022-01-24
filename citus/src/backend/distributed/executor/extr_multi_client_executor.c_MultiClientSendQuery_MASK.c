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
typedef  size_t int32 ;
struct TYPE_4__ {int /*<<< orphan*/  pgConn; } ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__** ClientConnectionArray ; 
 size_t INVALID_CONNECTION_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

bool
FUNC8(int32 connectionId, const char *query)
{
	MultiConnection *connection = NULL;
	bool success = true;
	int querySent = 0;

	FUNC1(connectionId != INVALID_CONNECTION_ID);
	connection = ClientConnectionArray[connectionId];
	FUNC1(connection != NULL);

	querySent = FUNC3(connection, query);
	if (querySent == 0)
	{
		char *errorMessage = FUNC7(FUNC2(connection->pgConn));

		/*
		 * query might include the user query coming from the taskTracker
		 * code path, that's why we hash it, too. Otherwise, this code
		 * path is generally exercised for the kind of errors that
		 * we cannot send the queries that Citus itself produced.
		 */
		FUNC4(WARNING, (FUNC6("could not send remote query \"%s\"",
								 FUNC0(query)),
						  FUNC5("Client error: %s",
									FUNC0(errorMessage))));

		success = false;
	}

	return success;
}