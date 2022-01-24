#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ transactionState; } ;
struct TYPE_10__ {TYPE_1__ remoteTransaction; } ;
typedef  TYPE_1__ RemoteTransaction ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_2__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ REMOTE_TRANS_2PC_ABORTING ; 
 scalar_t__ REMOTE_TRANS_ABORTED ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int const) ; 

void
FUNC7(MultiConnection *connection)
{
	RemoteTransaction *transaction = &connection->remoteTransaction;
	const bool raiseErrors = false;

	if (transaction->transactionState == REMOTE_TRANS_2PC_ABORTING)
	{
		PGresult *result = FUNC1(connection, raiseErrors);
		if (!FUNC3(result))
		{
			const bool isCommit = false;

			FUNC2(connection, result, raiseErrors);

			FUNC6(connection, isCommit);
		}

		FUNC4(result);
	}

	/*
	 * Try to consume results of any in-progress commands. In the 1PC case
	 * this is also where we consume the result of the ROLLBACK.
	 *
	 * If we don't succeed the connection will be in a bad state, so we close it.
	 */
	if (!FUNC0(connection, raiseErrors))
	{
		FUNC5(connection);
	}

	transaction->transactionState = REMOTE_TRANS_ABORTED;
}