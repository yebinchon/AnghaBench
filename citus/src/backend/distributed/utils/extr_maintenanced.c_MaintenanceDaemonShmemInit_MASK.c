#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hashInfo ;
struct TYPE_7__ {int keysize; int entrysize; int /*<<< orphan*/  hash; } ;
struct TYPE_6__ {char* lockTrancheName; int /*<<< orphan*/  trancheId; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MaintenanceDaemonDBData ;
typedef  TYPE_1__ MaintenanceDaemonControlData ;
typedef  TYPE_2__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  AddinShmemInitLock ; 
 int HASH_ELEM ; 
 int HASH_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* MaintenanceDaemonControl ; 
 int /*<<< orphan*/  MaintenanceDaemonDBHash ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  max_worker_processes ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  tag_hash ; 

__attribute__((used)) static void
FUNC10(void)
{
	bool alreadyInitialized = false;
	HASHCTL hashInfo;
	int hashFlags = 0;

	FUNC0(AddinShmemInitLock, LW_EXCLUSIVE);

	MaintenanceDaemonControl =
		(MaintenanceDaemonControlData *) FUNC7("Citus Maintenance Daemon",
														 FUNC5(),
														 &alreadyInitialized);

	/*
	 * Might already be initialized on EXEC_BACKEND type platforms that call
	 * shared library initialization functions in every backend.
	 */
	if (!alreadyInitialized)
	{
		MaintenanceDaemonControl->trancheId = FUNC2();
		MaintenanceDaemonControl->lockTrancheName = "Citus Maintenance Daemon";
		FUNC3(MaintenanceDaemonControl->trancheId,
							  MaintenanceDaemonControl->lockTrancheName);

		FUNC1(&MaintenanceDaemonControl->lock,
						 MaintenanceDaemonControl->trancheId);
	}


	FUNC8(&hashInfo, 0, sizeof(hashInfo));
	hashInfo.keysize = sizeof(Oid);
	hashInfo.entrysize = sizeof(MaintenanceDaemonDBData);
	hashInfo.hash = tag_hash;
	hashFlags = (HASH_ELEM | HASH_FUNCTION);

	MaintenanceDaemonDBHash = FUNC6("Maintenance Database Hash",
											max_worker_processes, max_worker_processes,
											&hashInfo, hashFlags);

	FUNC4(AddinShmemInitLock);

	if (&prev_shmem_startup_hook != NULL)
	{
		FUNC9();
	}
}