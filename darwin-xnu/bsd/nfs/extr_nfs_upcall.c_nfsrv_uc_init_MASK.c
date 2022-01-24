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
struct TYPE_2__ {scalar_t__ ucq_flags; int /*<<< orphan*/  ucq_thd; void* ucq_lock; int /*<<< orphan*/  ucq_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 int NFS_UC_HASH_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_NULL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsrv_uc_group ; 
 TYPE_1__* nfsrv_uc_queue_tbl ; 
 void* nfsrv_uc_shutdown_lock ; 

void
FUNC3(void)
{
	int i;

	nfsrv_uc_group = FUNC1("nfs_upcall_locks", LCK_GRP_ATTR_NULL);
	for (i = 0; i < NFS_UC_HASH_SZ; i++) {
		FUNC0(nfsrv_uc_queue_tbl[i].ucq_queue);
		nfsrv_uc_queue_tbl[i].ucq_lock = FUNC2(nfsrv_uc_group, LCK_ATTR_NULL);
		nfsrv_uc_queue_tbl[i].ucq_thd = THREAD_NULL;
		nfsrv_uc_queue_tbl[i].ucq_flags = 0;
	}
	nfsrv_uc_shutdown_lock = FUNC2(nfsrv_uc_group, LCK_ATTR_NULL);
}