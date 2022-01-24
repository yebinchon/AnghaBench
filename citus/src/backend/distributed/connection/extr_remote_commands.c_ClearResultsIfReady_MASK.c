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
struct TYPE_3__ {int /*<<< orphan*/ * pgConn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_1__ MultiConnection ;
typedef  scalar_t__ ExecStatusType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONNECTION_OK ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_COPY_IN ; 
 scalar_t__ PGRES_COPY_OUT ; 
 scalar_t__ PGRES_SINGLE_TUPLE ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

bool
FUNC10(MultiConnection *connection)
{
	PGconn *pgConn = connection->pgConn;

	if (FUNC8(pgConn) != CONNECTION_OK)
	{
		return false;
	}

	FUNC0(FUNC6(pgConn));

	while (true)
	{
		PGresult *result = NULL;
		ExecStatusType resultStatus;

		/*
		 * If busy, there might still be results already received and buffered
		 * by the OS. As connection is in non-blocking mode, we can check for
		 * that without blocking.
		 */
		if (FUNC5(pgConn))
		{
			if (FUNC3(pgConn) == -1)
			{
				/* write failed */
				return false;
			}
			if (FUNC2(pgConn) == 0)
			{
				/* some low-level failure */
				return false;
			}
		}

		/* clearing would require blocking IO, return */
		if (FUNC5(pgConn))
		{
			return false;
		}

		result = FUNC4(pgConn);
		if (result == NULL)
		{
			/* no more results available */
			return true;
		}

		resultStatus = FUNC7(result);

		/* only care about the status, can clear now */
		FUNC1(result);

		if (resultStatus == PGRES_COPY_IN || resultStatus == PGRES_COPY_OUT)
		{
			/* in copy, can't reliably recover without blocking */
			return false;
		}

		if (!(resultStatus == PGRES_SINGLE_TUPLE || resultStatus == PGRES_TUPLES_OK ||
			  resultStatus == PGRES_COMMAND_OK))
		{
			/* an error occcurred just when we were aborting */
			return false;
		}

		/* check if there are more results to consume */
	}

	FUNC9();
}