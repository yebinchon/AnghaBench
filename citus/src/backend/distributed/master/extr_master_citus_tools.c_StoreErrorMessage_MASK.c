#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(MultiConnection *connection, StringInfo queryResultString)
{
	char *errorMessage = FUNC0(connection->pgConn);
	if (errorMessage != NULL)
	{
		char *firstNewlineIndex = NULL;

		/* copy the error message to a writable memory */
		errorMessage = FUNC2(errorMessage, FUNC4(errorMessage));

		firstNewlineIndex = FUNC3(errorMessage, '\n');

		/* trim the error message at the line break */
		if (firstNewlineIndex != NULL)
		{
			*firstNewlineIndex = '\0';
		}
	}
	else
	{
		/* put a default error message if no error message is reported */
		errorMessage = "An error occurred while running the query";
	}

	FUNC1(queryResultString, "%s", errorMessage);
}