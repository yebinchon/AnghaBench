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
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(MultiConnection *connection, const char *command)
{
	PGconn *pgConn = connection->pgConn;
	int rc = 0;

	FUNC1(connection, command);

	/*
	 * Don't try to send command if connection is entirely gone
	 * (PQisnonblocking() would crash).
	 */
	if (!pgConn || FUNC4(pgConn) != CONNECTION_OK)
	{
		return 0;
	}

	FUNC0(FUNC2(pgConn));

	rc = FUNC3(pgConn, command);

	return rc;
}