#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  isNulls ;
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_12__ {TYPE_1__* allProcs; } ;
struct TYPE_11__ {TYPE_4__* backends; } ;
struct TYPE_9__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  transactionNumber; } ;
struct TYPE_8__ {int initiatorNodeIdentifier; int transactionOriginator; } ;
struct TYPE_10__ {scalar_t__ const userId; scalar_t__ databaseId; int /*<<< orphan*/  mutex; TYPE_3__ transactionId; TYPE_2__ citusBackend; } ;
struct TYPE_7__ {int pid; } ;
typedef  scalar_t__ Oid ;
typedef  int Datum ;
typedef  TYPE_4__ BackendData ;

/* Variables and functions */
 int ACTIVE_TRANSACTION_COLUMN_COUNT ; 
 int /*<<< orphan*/  DEFAULT_ROLE_MONITOR ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MaxBackends ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_6__* ProcGlobal ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_5__* backendManagementShmemData ; 
 scalar_t__ FUNC9 (scalar_t__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void
FUNC13(Tuplestorestate *tupleStore, TupleDesc tupleDescriptor)
{
	int backendIndex = 0;
	Datum values[ACTIVE_TRANSACTION_COLUMN_COUNT];
	bool isNulls[ACTIVE_TRANSACTION_COLUMN_COUNT];
	bool showAllTransactions = FUNC11();
	const Oid userId = FUNC0();

	/*
	 * We don't want to initialize memory while spinlock is held so we
	 * prefer to do it here. This initialization is done only for the first
	 * row.
	 */
	FUNC10(values, 0, sizeof(values));
	FUNC10(isNulls, false, sizeof(isNulls));

	if (FUNC9(userId, DEFAULT_ROLE_MONITOR))
	{
		showAllTransactions = true;
	}

	/* we're reading all distributed transactions, prevent new backends */
	FUNC2(LW_SHARED);

	for (backendIndex = 0; backendIndex < MaxBackends; ++backendIndex)
	{
		BackendData *currentBackend =
			&backendManagementShmemData->backends[backendIndex];
		bool coordinatorOriginatedQuery = false;

		/* to work on data after releasing g spinlock to protect against errors */
		Oid databaseId = InvalidOid;
		int backendPid = -1;
		int initiatorNodeIdentifier = -1;
		uint64 transactionNumber = 0;
		TimestampTz transactionIdTimestamp = 0;

		FUNC4(&currentBackend->mutex);

		/* we're only interested in backends initiated by Citus */
		if (currentBackend->citusBackend.initiatorNodeIdentifier < 0)
		{
			FUNC5(&currentBackend->mutex);
			continue;
		}

		/*
		 * Unless the user has a role that allows seeing all transactions (superuser,
		 * pg_monitor), skip over transactions belonging to other users.
		 */
		if (!showAllTransactions && currentBackend->userId != userId)
		{
			FUNC5(&currentBackend->mutex);
			continue;
		}

		databaseId = currentBackend->databaseId;
		backendPid = ProcGlobal->allProcs[backendIndex].pid;
		initiatorNodeIdentifier = currentBackend->citusBackend.initiatorNodeIdentifier;

		/*
		 * We prefer to use worker_query instead of transactionOriginator in the user facing
		 * functions since its more intuitive. Thus, we negate the result before returning.
		 *
		 * We prefer to use citusBackend's transactionOriginator field over transactionId's
		 * field with the same name. The reason is that it also covers backends that are not
		 * inside a distributed transaction.
		 */
		coordinatorOriginatedQuery = currentBackend->citusBackend.transactionOriginator;

		transactionNumber = currentBackend->transactionId.transactionNumber;
		transactionIdTimestamp = currentBackend->transactionId.timestamp;

		FUNC5(&currentBackend->mutex);

		values[0] = FUNC3(databaseId);
		values[1] = FUNC1(backendPid);
		values[2] = FUNC1(initiatorNodeIdentifier);
		values[3] = !coordinatorOriginatedQuery;
		values[4] = FUNC7(transactionNumber);
		values[5] = FUNC6(transactionIdTimestamp);

		FUNC12(tupleStore, tupleDescriptor, values, isNulls);

		/*
		 * We don't want to initialize memory while spinlock is held so we
		 * prefer to do it here. This initialization is done for the rows
		 * starting from the second one.
		 */
		FUNC10(values, 0, sizeof(values));
		FUNC10(isNulls, false, sizeof(isNulls));
	}

	FUNC8();
}