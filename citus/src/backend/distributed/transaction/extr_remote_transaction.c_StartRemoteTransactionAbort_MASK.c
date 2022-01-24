#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ transactionState; int /*<<< orphan*/  preparedName; } ;
struct TYPE_16__ {TYPE_2__ remoteTransaction; } ;
struct TYPE_14__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ RemoteTransaction ;
typedef  TYPE_3__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int const) ; 
 scalar_t__ REMOTE_TRANS_1PC_ABORTING ; 
 scalar_t__ REMOTE_TRANS_2PC_ABORTING ; 
 scalar_t__ REMOTE_TRANS_INVALID ; 
 scalar_t__ REMOTE_TRANS_PREPARED ; 
 scalar_t__ REMOTE_TRANS_PREPARING ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(MultiConnection *connection)
{
	RemoteTransaction *transaction = &connection->remoteTransaction;
	const bool raiseErrors = false;
	const bool isNotCommit = false;

	FUNC0(transaction->transactionState != REMOTE_TRANS_INVALID);

	/*
	 * Clear previous results, so we have a better chance to send ROLLBACK
	 * [PREPARED]. If we've previously sent a PREPARE TRANSACTION, we always
	 * want to wait for that result, as that shouldn't take long and will
	 * reserve resources.  But if there's another query running, we don't want
	 * to wait, because a long running statement may be running, so force it to
	 * be killed in that case.
	 */
	if (transaction->transactionState == REMOTE_TRANS_PREPARING ||
		transaction->transactionState == REMOTE_TRANS_PREPARED)
	{
		StringInfoData command;

		/* await PREPARE TRANSACTION results, closing the connection would leave it dangling */
		FUNC2(connection);

		FUNC9(&command);
		FUNC8(&command, "ROLLBACK PREPARED %s",
						 FUNC10(transaction->preparedName));

		if (!FUNC5(connection, command.data))
		{
			FUNC3(connection, raiseErrors);

			FUNC7(connection, isNotCommit);
		}
		else
		{
			transaction->transactionState = REMOTE_TRANS_2PC_ABORTING;
		}
	}
	else
	{
		/*
		 * In case of a cancellation, the connection might still be working
		 * on some commands. Try to consume the results such that the
		 * connection can be reused, but do not want to wait for commands
		 * to finish. Instead we just close the connection if the command
		 * is still busy.
		 */
		if (!FUNC1(connection))
		{
			FUNC6(connection);

			/* FinishRemoteTransactionAbort will emit warning */
			return;
		}

		if (!FUNC5(connection, "ROLLBACK"))
		{
			/* no point in reporting a likely redundant message */
			FUNC4(connection, raiseErrors);
		}
		else
		{
			transaction->transactionState = REMOTE_TRANS_1PC_ABORTING;
		}
	}
}