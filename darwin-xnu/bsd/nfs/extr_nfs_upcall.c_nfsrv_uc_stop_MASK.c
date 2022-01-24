#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_3__ {scalar_t__ ucq_thd; int /*<<< orphan*/  ucq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PSOCK ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* nfsrv_uc_queue_tbl ; 
 int nfsrv_uc_shutdown ; 
 int /*<<< orphan*/  nfsrv_uc_shutdown_lock ; 
 size_t nfsrv_uc_thread_count ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int32_t i;
	int32_t thread_count = nfsrv_uc_thread_count;

	FUNC0("Entering nfsrv_uc_stop\n");

	/* Signal up-call threads to stop */
	nfsrv_uc_shutdown = 1;
	for (i = 0; i < thread_count; i++) {
		FUNC1(nfsrv_uc_queue_tbl[i].ucq_lock);
		FUNC5(&nfsrv_uc_queue_tbl[i]);
		FUNC2(nfsrv_uc_queue_tbl[i].ucq_lock);
	}

	/* Wait until they are done shutting down */
	FUNC1(nfsrv_uc_shutdown_lock);
	while (nfsrv_uc_thread_count > 0)
		FUNC3(&nfsrv_uc_thread_count, nfsrv_uc_shutdown_lock, PSOCK, "nfsd_upcall_shutdown_stop", NULL);

	/* Deallocate old threads */
	for (i = 0; i < nfsrv_uc_thread_count; i++) {
		if (nfsrv_uc_queue_tbl[i].ucq_thd != THREAD_NULL)
			FUNC4(nfsrv_uc_queue_tbl[i].ucq_thd);
		nfsrv_uc_queue_tbl[i].ucq_thd = THREAD_NULL;
	}

	/* Enable restarting */
	nfsrv_uc_shutdown = 0;
	FUNC2(nfsrv_uc_shutdown_lock);
}