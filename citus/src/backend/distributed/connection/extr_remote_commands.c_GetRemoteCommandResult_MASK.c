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
struct TYPE_4__ {int /*<<< orphan*/ * pgConn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CONNECTION_BAD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  PGRES_FATAL_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

PGresult *
FUNC6(MultiConnection *connection, bool raiseInterrupts)
{
	PGconn *pgConn = connection->pgConn;
	PGresult *result = NULL;

	/*
	 * Short circuit tests around the more expensive parts of this
	 * routine. This'd also trigger a return in the, unlikely, case of a
	 * failed/nonexistant connection.
	 */
	if (!FUNC3(pgConn))
	{
		return FUNC2(connection->pgConn);
	}

	if (!FUNC1(connection, raiseInterrupts))
	{
		/* some error(s) happened while doing the I/O, signal the callers */
		if (FUNC5(pgConn) == CONNECTION_BAD)
		{
			return FUNC4(pgConn, PGRES_FATAL_ERROR);
		}

		return NULL;
	}

	/* no IO should be necessary to get result */
	FUNC0(!FUNC3(pgConn));

	result = FUNC2(connection->pgConn);

	return result;
}