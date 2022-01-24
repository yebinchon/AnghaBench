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
struct TYPE_4__ {scalar_t__ copyBytesWrittenSinceLastFlush; int /*<<< orphan*/ * pgConn; } ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONNECTION_OK ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

bool
FUNC5(MultiConnection *connection, const char *errormsg)
{
	PGconn *pgConn = connection->pgConn;
	int copyState = 0;
	bool allowInterrupts = true;

	if (FUNC4(pgConn) != CONNECTION_OK)
	{
		return false;
	}

	FUNC0(FUNC2(pgConn));

	copyState = FUNC3(pgConn, errormsg);
	if (copyState == -1)
	{
		return false;
	}

	/* see PutRemoteCopyData() */

	connection->copyBytesWrittenSinceLastFlush = 0;

	return FUNC1(connection, allowInterrupts);
}