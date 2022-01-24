#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ transactionState; int /*<<< orphan*/  preparedName; } ;
struct MultiConnection {int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; TYPE_1__ remoteTransaction; } ;
typedef  TYPE_1__ RemoteTransaction ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct MultiConnection*,int const) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC2 (struct MultiConnection*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct MultiConnection*,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ REMOTE_TRANS_ABORTED ; 
 scalar_t__ REMOTE_TRANS_PREPARED ; 
 scalar_t__ REMOTE_TRANS_PREPARING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(struct MultiConnection *connection)
{
	RemoteTransaction *transaction = &connection->remoteTransaction;
	PGresult *result = NULL;
	const bool raiseErrors = true;

	FUNC0(transaction->transactionState == REMOTE_TRANS_PREPARING);

	result = FUNC2(connection, raiseErrors);

	if (!FUNC4(result))
	{
		transaction->transactionState = REMOTE_TRANS_ABORTED;
		FUNC3(connection, result, raiseErrors);
	}
	else
	{
		transaction->transactionState = REMOTE_TRANS_PREPARED;
	}

	FUNC5(result);

	/*
	 * Try to consume results of PREPARE TRANSACTION command. If we don't
	 * succeed, rollback the transaction. Note that we've not committed on
	 * any node yet, and we're not sure about the state of the worker node.
	 * So rollbacking seems to be the safest action if the worker is
	 * in a state where it can actually rollback.
	 */
	if (!FUNC1(connection, raiseErrors))
	{
		FUNC6(ERROR, (FUNC8("failed to prepare transaction '%s' on host %s:%d",
							   transaction->preparedName, connection->hostname,
							   connection->port),
						FUNC7("Try re-running the command.")));
	}
}