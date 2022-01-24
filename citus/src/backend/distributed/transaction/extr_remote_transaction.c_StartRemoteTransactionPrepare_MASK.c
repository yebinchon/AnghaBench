#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ transactionState; int /*<<< orphan*/  preparedName; int /*<<< orphan*/  transactionFailed; } ;
struct MultiConnection {int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; TYPE_3__ remoteTransaction; } ;
struct TYPE_7__ {int /*<<< orphan*/  groupId; } ;
typedef  TYPE_1__ WorkerNode ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  TYPE_3__ RemoteTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct MultiConnection*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct MultiConnection*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ REMOTE_TRANS_INVALID ; 
 scalar_t__ REMOTE_TRANS_PREPARING ; 
 int /*<<< orphan*/  FUNC5 (struct MultiConnection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct MultiConnection *connection)
{
	RemoteTransaction *transaction = &connection->remoteTransaction;
	StringInfoData command;
	const bool raiseErrors = true;
	WorkerNode *workerNode = NULL;

	/* can't prepare a nonexistant transaction */
	FUNC0(transaction->transactionState != REMOTE_TRANS_INVALID);

	/* can't prepare in a failed transaction */
	FUNC0(!transaction->transactionFailed);

	/* can't prepare if already started to prepare/abort/commit */
	FUNC0(transaction->transactionState < REMOTE_TRANS_PREPARING);

	FUNC1(connection);

	/* log transactions to workers in pg_dist_transaction */
	workerNode = FUNC2(connection->hostname, connection->port);
	if (workerNode != NULL)
	{
		FUNC4(workerNode->groupId, transaction->preparedName);
	}

	FUNC7(&command);
	FUNC6(&command, "PREPARE TRANSACTION %s",
					 FUNC8(transaction->preparedName));

	if (!FUNC5(connection, command.data))
	{
		FUNC3(connection, raiseErrors);
	}
	else
	{
		transaction->transactionState = REMOTE_TRANS_PREPARING;
	}
}