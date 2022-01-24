#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int transactionFailed; } ;
struct TYPE_5__ {TYPE_1__ remoteTransaction; int /*<<< orphan*/ * pgConn; } ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_2__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InterruptHoldoffCount ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  PG_WAIT_EXTENSION ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ ProcDiePending ; 
 scalar_t__ QueryCancelPending ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int WL_LATCH_SET ; 
 int WL_POSTMASTER_DEATH ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static bool
FUNC11(MultiConnection *connection, bool raiseInterrupts)
{
	PGconn *pgConn = connection->pgConn;
	int sock = FUNC6(pgConn);

	FUNC0(pgConn);
	FUNC0(FUNC5(pgConn));

	if (raiseInterrupts)
	{
		FUNC1();
	}

	/* perform the necessary IO */
	while (true)
	{
		int sendStatus = 0;
		int rc = 0;
		int waitFlags = WL_POSTMASTER_DEATH | WL_LATCH_SET;

		/* try to send all pending data */
		sendStatus = FUNC3(pgConn);

		/* if sending failed, there's nothing more we can do */
		if (sendStatus == -1)
		{
			return false;
		}
		else if (sendStatus == 1)
		{
			waitFlags |= WL_SOCKET_WRITEABLE;
		}

		/* if reading fails, there's not much we can do */
		if (FUNC2(pgConn) == 0)
		{
			return false;
		}
		if (FUNC4(pgConn))
		{
			waitFlags |= WL_SOCKET_READABLE;
		}

		if ((waitFlags & (WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE)) == 0)
		{
			/* no IO necessary anymore, we're done */
			return true;
		}

		rc = FUNC8(MyLatch, waitFlags, sock, 0, PG_WAIT_EXTENSION);
		if (rc & WL_POSTMASTER_DEATH)
		{
			FUNC9(ERROR, (FUNC10("postmaster was shut down, exiting")));
		}

		if (rc & WL_LATCH_SET)
		{
			FUNC7(MyLatch);

			/* if allowed raise errors */
			if (raiseInterrupts)
			{
				FUNC1();
			}

			/*
			 * If raising errors allowed, or called within in a section with
			 * interrupts held, return instead, and mark the transaction as
			 * failed.
			 */
			if (InterruptHoldoffCount > 0 && (QueryCancelPending || ProcDiePending))
			{
				connection->remoteTransaction.transactionFailed = true;
				break;
			}
		}
	}

	return false;
}