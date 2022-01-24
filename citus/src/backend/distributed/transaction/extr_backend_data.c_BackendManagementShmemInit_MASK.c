#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int initiatorNodeIdentifier; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; TYPE_1__ citusBackend; } ;
struct TYPE_8__ {int /*<<< orphan*/  trancheId; } ;
struct TYPE_9__ {TYPE_4__* backends; int /*<<< orphan*/  nextTransactionNumber; int /*<<< orphan*/  lock; TYPE_2__ namedLockTranche; } ;
typedef  TYPE_2__ NamedLWLockTranche ;
typedef  TYPE_3__ BackendManagementShmemData ;
typedef  TYPE_4__ BackendData ;

/* Variables and functions */
 int /*<<< orphan*/  AddinShmemInitLock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 TYPE_3__* backendManagementShmemData ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(void)
{
	bool alreadyInitialized = false;

	/* we may update the shmem, acquire lock exclusively */
	FUNC1(AddinShmemInitLock, LW_EXCLUSIVE);

	backendManagementShmemData =
		(BackendManagementShmemData *) FUNC6(
			"Backend Management Shmem",
			FUNC0(),
			&alreadyInitialized);

	if (!alreadyInitialized)
	{
		int backendIndex = 0;
		int totalProcs = 0;
		char *trancheName = "Backend Management Tranche";

		NamedLWLockTranche *namedLockTranche =
			&backendManagementShmemData->namedLockTranche;

		/* start by zeroing out all the memory */
		FUNC9(backendManagementShmemData, 0,
			   FUNC0());

		namedLockTranche->trancheId = FUNC3();

		FUNC4(namedLockTranche->trancheId, trancheName);
		FUNC2(&backendManagementShmemData->lock,
						 namedLockTranche->trancheId);

		/* start the distributed transaction ids from 1 */
		FUNC10(&backendManagementShmemData->nextTransactionNumber, 1);

		/*
		 * We need to init per backend's spinlock before any backend
		 * starts its execution. Note that we initialize TotalProcs (e.g., not
		 * MaxBackends) since some of the blocking processes could be prepared
		 * transactions, which aren't covered by MaxBackends.
		 *
		 * We also initiate initiatorNodeIdentifier to -1, which can never be
		 * used as a node id.
		 */
		totalProcs = FUNC8();
		for (backendIndex = 0; backendIndex < totalProcs; ++backendIndex)
		{
			BackendData *backendData =
				&backendManagementShmemData->backends[backendIndex];
			backendData->citusBackend.initiatorNodeIdentifier = -1;
			FUNC7(&backendData->mutex);
		}
	}

	FUNC5(AddinShmemInitLock);

	if (&prev_shmem_startup_hook != NULL)
	{
		FUNC11();
	}
}