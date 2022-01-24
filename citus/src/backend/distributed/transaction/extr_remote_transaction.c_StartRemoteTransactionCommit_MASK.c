#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ transactionState; int /*<<< orphan*/  preparedName; scalar_t__ transactionFailed; } ;
struct TYPE_13__ {TYPE_2__ remoteTransaction; } ;
struct TYPE_11__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ RemoteTransaction ;
typedef  TYPE_3__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int const) ; 
 scalar_t__ REMOTE_TRANS_1PC_ABORTING ; 
 scalar_t__ REMOTE_TRANS_1PC_COMMITTING ; 
 scalar_t__ REMOTE_TRANS_2PC_COMMITTING ; 
 scalar_t__ REMOTE_TRANS_INVALID ; 
 scalar_t__ REMOTE_TRANS_PREPARED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(MultiConnection *connection)
{
	RemoteTransaction *transaction = &connection->remoteTransaction;
	const bool raiseErrors = false;
	const bool isCommit = true;

	/* can only commit if transaction is in progress */
	FUNC0(transaction->transactionState != REMOTE_TRANS_INVALID);

	/* can't commit if we already started to commit or abort */
	FUNC0(transaction->transactionState < REMOTE_TRANS_1PC_ABORTING);

	if (transaction->transactionFailed)
	{
		/* abort the transaction if it failed */
		transaction->transactionState = REMOTE_TRANS_1PC_ABORTING;

		/*
		 * Try sending an ROLLBACK; Depending on the state that won't
		 * succeed, but let's try.  Have to clear previous results
		 * first.
		 */
		FUNC1(connection); /* try to clear pending stuff */
		if (!FUNC3(connection, "ROLLBACK"))
		{
			/* no point in reporting a likely redundant message */
		}
	}
	else if (transaction->transactionState == REMOTE_TRANS_PREPARED)
	{
		/* commit the prepared transaction */
		StringInfoData command;

		FUNC6(&command);
		FUNC5(&command, "COMMIT PREPARED %s",
						 FUNC7(transaction->preparedName));

		transaction->transactionState = REMOTE_TRANS_2PC_COMMITTING;

		if (!FUNC3(connection, command.data))
		{
			FUNC2(connection, raiseErrors);

			FUNC4(connection, isCommit);
		}
	}
	else
	{
		/* initiate remote transaction commit */
		transaction->transactionState = REMOTE_TRANS_1PC_COMMITTING;

		if (!FUNC3(connection, "COMMIT"))
		{
			/*
			 * For a moment there I thought we were in trouble.
			 *
			 * Failing in this state means that we don't know whether the the
			 * commit has succeeded.
			 */
			FUNC2(connection, raiseErrors);
		}
	}
}