#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_10__ {scalar_t__ bgw_extra; } ;
struct TYPE_9__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_8__ {int /*<<< orphan*/  DatabaseId; int /*<<< orphan*/  lock_cooldown; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ LockAcquireHelperArgs ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_6__* MyBgworkerEntry ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int SPI_OK_SELECT ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int SPI_processed ; 
 TYPE_5__* SPI_tuptable ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int /*<<< orphan*/  STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  lock_acquire_helper_sigterm ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

void
FUNC26(Datum main_arg)
{
	int backendPid = FUNC4(main_arg);
	StringInfoData sql;
	LockAcquireHelperArgs *args = (LockAcquireHelperArgs *) MyBgworkerEntry->bgw_extra;
	long timeout = 0;
	const TimestampTz connectionStart = FUNC6();
	const TimestampTz deadline = FUNC18(connectionStart,
															 args->lock_cooldown);

	/* parameters for sql query to be executed */
	const int paramCount = 1;
	Oid paramTypes[1] = { INT4OID };
	Datum paramValues[1];

	FUNC24(SIGTERM, lock_acquire_helper_sigterm);

	FUNC1();

	FUNC20(LOG, "lock acquiring backend started for backend %d (cooldown %dms)", backendPid,
		 args->lock_cooldown);

	/*
	 * this loop waits till the deadline is reached (eg. lock_cooldown has passed) OR we
	 * no longer need to acquire the lock due to the termination of this backend.
	 * Only after the timeout the code will continue with the section that will acquire
	 * the lock.
	 */
	do {
		timeout = FUNC5(deadline);
	} while (timeout > 0 && FUNC16(timeout));

	/* connecting to the database */
	FUNC0(args->DatabaseId, InvalidOid, 0);

	/*
	 * The query below does a self join on pg_locks to find backends that are granted a
	 * lock our target backend (backendPid) is waiting for. Once it found such a backend
	 * it terminates the backend with pg_terminate_pid.
	 *
	 * The result is are rows of pid,bool indicating backend that is terminated and the
	 * success of the termination. These will be logged accordingly below for an
	 * administrator to correlate in the logs with the termination message.
	 */
	FUNC21(&sql);
	FUNC19(&sql,
					 "SELECT \n"
					 "    DISTINCT conflicting.pid,\n"
					 "    pg_terminate_backend(conflicting.pid)\n"
					 "  FROM pg_locks AS blocked\n"
					 "       JOIN pg_locks AS conflicting\n"
					 "         ON (conflicting.database = blocked.database\n"
					 "             AND conflicting.objid = blocked.objid)\n"
					 " WHERE conflicting.granted = true\n"
					 "   AND blocked.granted = false\n"
					 "   AND blocked.pid = $1;");
	paramValues[0] = FUNC8(backendPid);

	while (FUNC16(100))
	{
		int row = 0;
		int spiStatus = 0;

		FUNC20(LOG, "canceling competing backends for backend %d", backendPid);

		/*
		 * Begin our transaction
		 */
		FUNC15();
		FUNC17();
		FUNC11();
		FUNC10(FUNC7());
		FUNC22(STATE_RUNNING, sql.data);

		spiStatus = FUNC12(sql.data, paramCount, paramTypes, paramValues,
										  NULL, false, 0);

		if (spiStatus == SPI_OK_SELECT)
		{
			for (row = 0; row < SPI_processed; row++)
			{
				int terminatedPid = 0;
				bool isTerminated = false;
				bool isnull = false;

				terminatedPid = FUNC4(FUNC14(SPI_tuptable->vals[0],
															SPI_tuptable->tupdesc,
															1, &isnull));

				isTerminated = FUNC3(FUNC14(SPI_tuptable->vals[0],
														  SPI_tuptable->tupdesc,
														  2, &isnull));

				if (isTerminated)
				{
					FUNC20(WARNING, "terminated conflicting backend %d", terminatedPid);
				}
				else
				{
					FUNC20(INFO,
						 "attempt to terminate conflicting backend %d was unsuccessful",
						 terminatedPid);
				}
			}
		}
		else
		{
			FUNC20(FATAL, "cannot cancel competing backends for backend %d", backendPid);
		}

		/*
		 * And finish our transaction.
		 */
		FUNC13();
		FUNC9();
		FUNC2();
		FUNC23(false);
		FUNC22(STATE_IDLE, NULL);
	}


	FUNC20(LOG, "lock acquiring backend finished for backend %d", backendPid);

	/* safely got to the end, exit without problem */
	FUNC25(0);
}