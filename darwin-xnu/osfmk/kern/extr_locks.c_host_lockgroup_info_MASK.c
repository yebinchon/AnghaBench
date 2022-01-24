#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  scalar_t__ vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  int mach_msg_type_number_t ;
struct TYPE_13__ {int /*<<< orphan*/  lockgroup_name; int /*<<< orphan*/  lock_rw_wait_cum; int /*<<< orphan*/  lock_rw_wait_max; int /*<<< orphan*/  lock_rw_held_cum; int /*<<< orphan*/  lock_rw_held_max; int /*<<< orphan*/  lock_rw_wait_cnt; int /*<<< orphan*/  lock_rw_miss_cnt; int /*<<< orphan*/  lock_rw_held_cnt; int /*<<< orphan*/  lock_rw_util_cnt; int /*<<< orphan*/  lock_rw_cnt; int /*<<< orphan*/  lock_mtx_wait_cum; int /*<<< orphan*/  lock_mtx_wait_max; int /*<<< orphan*/  lock_mtx_held_cum; int /*<<< orphan*/  lock_mtx_held_max; int /*<<< orphan*/  lock_mtx_wait_cnt; int /*<<< orphan*/  lock_mtx_miss_cnt; int /*<<< orphan*/  lock_mtx_held_cnt; int /*<<< orphan*/  lock_mtx_util_cnt; int /*<<< orphan*/  lock_mtx_cnt; int /*<<< orphan*/  lock_spin_held_cum; int /*<<< orphan*/  lock_spin_held_max; int /*<<< orphan*/  lock_spin_miss_cnt; int /*<<< orphan*/  lock_spin_held_cnt; int /*<<< orphan*/  lock_spin_util_cnt; int /*<<< orphan*/  lock_spin_cnt; } ;
typedef  TYPE_5__ lockgroup_info_t ;
typedef  TYPE_5__* lockgroup_info_array_t ;
struct TYPE_11__ {int /*<<< orphan*/  lck_grp_rw_wait_cum; int /*<<< orphan*/  lck_grp_rw_wait_max; int /*<<< orphan*/  lck_grp_rw_held_cum; int /*<<< orphan*/  lck_grp_rw_held_max; int /*<<< orphan*/  lck_grp_rw_wait_cnt; int /*<<< orphan*/  lck_grp_rw_miss_cnt; int /*<<< orphan*/  lck_grp_rw_held_cnt; int /*<<< orphan*/  lck_grp_rw_util_cnt; } ;
struct TYPE_10__ {int /*<<< orphan*/  lck_grp_mtx_wait_cum; int /*<<< orphan*/  lck_grp_mtx_wait_max; int /*<<< orphan*/  lck_grp_mtx_held_cum; int /*<<< orphan*/  lck_grp_mtx_held_max; int /*<<< orphan*/  lck_grp_mtx_wait_cnt; int /*<<< orphan*/  lck_grp_mtx_miss_cnt; int /*<<< orphan*/  lck_grp_mtx_held_cnt; int /*<<< orphan*/  lck_grp_mtx_util_cnt; } ;
struct TYPE_9__ {int /*<<< orphan*/  lck_grp_spin_held_cum; int /*<<< orphan*/  lck_grp_spin_held_max; int /*<<< orphan*/  lck_grp_spin_miss_cnt; int /*<<< orphan*/  lck_grp_spin_held_cnt; int /*<<< orphan*/  lck_grp_spin_util_cnt; } ;
struct TYPE_12__ {TYPE_3__ lck_grp_rw_stat; TYPE_2__ lck_grp_mtx_stat; TYPE_1__ lck_grp_spin_stat; } ;
struct TYPE_14__ {int /*<<< orphan*/  lck_grp_name; TYPE_4__ lck_grp_stat; int /*<<< orphan*/  lck_grp_rwcnt; int /*<<< orphan*/  lck_grp_mtxcnt; int /*<<< orphan*/  lck_grp_spincnt; } ;
typedef  TYPE_7__ lck_grp_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ host_t ;

/* Variables and functions */
 scalar_t__ HOST_NULL ; 
 scalar_t__ KERN_INVALID_HOST ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LOCKGROUP_MAX_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_IPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  ipc_kernel_map ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int lck_grp_cnt ; 
 int /*<<< orphan*/  lck_grp_lock ; 
 int /*<<< orphan*/  lck_grp_queue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

kern_return_t
FUNC10(
	host_t					host,
	lockgroup_info_array_t	*lockgroup_infop,
	mach_msg_type_number_t	*lockgroup_infoCntp)
{
	lockgroup_info_t	*lockgroup_info_base;
	lockgroup_info_t	*lockgroup_info;
	vm_offset_t			lockgroup_info_addr;
	vm_size_t			lockgroup_info_size;
	vm_size_t			lockgroup_info_vmsize;
	lck_grp_t			*lck_grp;
	unsigned int		i;
	vm_map_copy_t		copy;
	kern_return_t		kr;

	if (host == HOST_NULL)
		return KERN_INVALID_HOST;

	FUNC3(&lck_grp_lock);

	lockgroup_info_size = lck_grp_cnt * sizeof(*lockgroup_info);
	lockgroup_info_vmsize = FUNC7(lockgroup_info_size);
	kr = FUNC2(ipc_kernel_map,
						 &lockgroup_info_addr, lockgroup_info_vmsize, VM_KERN_MEMORY_IPC);
	if (kr != KERN_SUCCESS) {
		FUNC4(&lck_grp_lock);
		return(kr);
	}

	lockgroup_info_base = (lockgroup_info_t *) lockgroup_info_addr;
	lck_grp = (lck_grp_t *)FUNC5(&lck_grp_queue);
	lockgroup_info = lockgroup_info_base;

	for (i = 0; i < lck_grp_cnt; i++) {

		lockgroup_info->lock_spin_cnt = lck_grp->lck_grp_spincnt;
		lockgroup_info->lock_spin_util_cnt = lck_grp->lck_grp_stat.lck_grp_spin_stat.lck_grp_spin_util_cnt;
		lockgroup_info->lock_spin_held_cnt = lck_grp->lck_grp_stat.lck_grp_spin_stat.lck_grp_spin_held_cnt;
		lockgroup_info->lock_spin_miss_cnt = lck_grp->lck_grp_stat.lck_grp_spin_stat.lck_grp_spin_miss_cnt;
		lockgroup_info->lock_spin_held_max = lck_grp->lck_grp_stat.lck_grp_spin_stat.lck_grp_spin_held_max;
		lockgroup_info->lock_spin_held_cum = lck_grp->lck_grp_stat.lck_grp_spin_stat.lck_grp_spin_held_cum;

		lockgroup_info->lock_mtx_cnt = lck_grp->lck_grp_mtxcnt;
		lockgroup_info->lock_mtx_util_cnt = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_util_cnt;
		lockgroup_info->lock_mtx_held_cnt = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_held_cnt;
		lockgroup_info->lock_mtx_miss_cnt = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_miss_cnt;
		lockgroup_info->lock_mtx_wait_cnt = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_wait_cnt;
		lockgroup_info->lock_mtx_held_max = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_held_max;
		lockgroup_info->lock_mtx_held_cum = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_held_cum;
		lockgroup_info->lock_mtx_wait_max = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_wait_max;
		lockgroup_info->lock_mtx_wait_cum = lck_grp->lck_grp_stat.lck_grp_mtx_stat.lck_grp_mtx_wait_cum;

		lockgroup_info->lock_rw_cnt = lck_grp->lck_grp_rwcnt;
		lockgroup_info->lock_rw_util_cnt = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_util_cnt;
		lockgroup_info->lock_rw_held_cnt = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_held_cnt;
		lockgroup_info->lock_rw_miss_cnt = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_miss_cnt;
		lockgroup_info->lock_rw_wait_cnt = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_wait_cnt;
		lockgroup_info->lock_rw_held_max = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_held_max;
		lockgroup_info->lock_rw_held_cum = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_held_cum;
		lockgroup_info->lock_rw_wait_max = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_wait_max;
		lockgroup_info->lock_rw_wait_cum = lck_grp->lck_grp_stat.lck_grp_rw_stat.lck_grp_rw_wait_cum;

		(void) FUNC8(lockgroup_info->lockgroup_name,lck_grp->lck_grp_name, LOCKGROUP_MAX_NAME);

		lck_grp = (lck_grp_t *)(FUNC6((queue_entry_t)(lck_grp)));
		lockgroup_info++;
	}

	*lockgroup_infoCntp = lck_grp_cnt;
	FUNC4(&lck_grp_lock);

	if (lockgroup_info_size != lockgroup_info_vmsize)
		FUNC1((char *)lockgroup_info, lockgroup_info_vmsize - lockgroup_info_size);

	kr = FUNC9(ipc_kernel_map, (vm_map_address_t)lockgroup_info_addr,
			   (vm_map_size_t)lockgroup_info_size, TRUE, &copy);
	FUNC0(kr == KERN_SUCCESS);

	*lockgroup_infop = (lockgroup_info_t *) copy;

	return(KERN_SUCCESS);
}