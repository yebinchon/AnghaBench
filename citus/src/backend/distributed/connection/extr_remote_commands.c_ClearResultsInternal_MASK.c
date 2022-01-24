#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ PGRES_COPY_IN ; 
 scalar_t__ PGRES_FATAL_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 

__attribute__((used)) static bool
FUNC7(MultiConnection *connection, bool raiseErrors, bool discardWarnings)
{
	bool success = true;

	while (true)
	{
		PGresult *result = FUNC0(connection, raiseErrors);
		if (result == NULL)
		{
			break;
		}

		/*
		 * End any pending copy operation. Transaction will be marked
		 * as failed by the following part.
		 */
		if (FUNC5(result) == PGRES_COPY_IN)
		{
			FUNC4(connection->pgConn, NULL);
		}

		if (!FUNC1(result))
		{
			if (!discardWarnings)
			{
				FUNC6(connection, result, WARNING);
			}

			FUNC2(connection, raiseErrors);

			success = false;

			/* an error happened, there is nothing we can do more */
			if (FUNC5(result) == PGRES_FATAL_ERROR)
			{
				FUNC3(result);

				break;
			}
		}

		FUNC3(result);
	}

	return success;
}