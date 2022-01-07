
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_size_t ;
typedef scalar_t__ vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef int queue_entry_t ;
typedef int mach_msg_type_number_t ;
struct TYPE_13__ {int lockgroup_name; int lock_rw_wait_cum; int lock_rw_wait_max; int lock_rw_held_cum; int lock_rw_held_max; int lock_rw_wait_cnt; int lock_rw_miss_cnt; int lock_rw_held_cnt; int lock_rw_util_cnt; int lock_rw_cnt; int lock_mtx_wait_cum; int lock_mtx_wait_max; int lock_mtx_held_cum; int lock_mtx_held_max; int lock_mtx_wait_cnt; int lock_mtx_miss_cnt; int lock_mtx_held_cnt; int lock_mtx_util_cnt; int lock_mtx_cnt; int lock_spin_held_cum; int lock_spin_held_max; int lock_spin_miss_cnt; int lock_spin_held_cnt; int lock_spin_util_cnt; int lock_spin_cnt; } ;
typedef TYPE_5__ lockgroup_info_t ;
typedef TYPE_5__* lockgroup_info_array_t ;
struct TYPE_11__ {int lck_grp_rw_wait_cum; int lck_grp_rw_wait_max; int lck_grp_rw_held_cum; int lck_grp_rw_held_max; int lck_grp_rw_wait_cnt; int lck_grp_rw_miss_cnt; int lck_grp_rw_held_cnt; int lck_grp_rw_util_cnt; } ;
struct TYPE_10__ {int lck_grp_mtx_wait_cum; int lck_grp_mtx_wait_max; int lck_grp_mtx_held_cum; int lck_grp_mtx_held_max; int lck_grp_mtx_wait_cnt; int lck_grp_mtx_miss_cnt; int lck_grp_mtx_held_cnt; int lck_grp_mtx_util_cnt; } ;
struct TYPE_9__ {int lck_grp_spin_held_cum; int lck_grp_spin_held_max; int lck_grp_spin_miss_cnt; int lck_grp_spin_held_cnt; int lck_grp_spin_util_cnt; } ;
struct TYPE_12__ {TYPE_3__ lck_grp_rw_stat; TYPE_2__ lck_grp_mtx_stat; TYPE_1__ lck_grp_spin_stat; } ;
struct TYPE_14__ {int lck_grp_name; TYPE_4__ lck_grp_stat; int lck_grp_rwcnt; int lck_grp_mtxcnt; int lck_grp_spincnt; } ;
typedef TYPE_7__ lck_grp_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ host_t ;


 scalar_t__ HOST_NULL ;
 scalar_t__ KERN_INVALID_HOST ;
 scalar_t__ KERN_SUCCESS ;
 int LOCKGROUP_MAX_NAME ;
 int TRUE ;
 int VM_KERN_MEMORY_IPC ;
 int assert (int) ;
 int bzero (char*,int) ;
 int ipc_kernel_map ;
 scalar_t__ kmem_alloc_pageable (int ,scalar_t__*,int,int ) ;
 int lck_grp_cnt ;
 int lck_grp_lock ;
 int lck_grp_queue ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int ) ;
 int round_page (int) ;
 int strncpy (int ,int ,int ) ;
 scalar_t__ vm_map_copyin (int ,int ,int ,int ,scalar_t__*) ;

kern_return_t
host_lockgroup_info(
 host_t host,
 lockgroup_info_array_t *lockgroup_infop,
 mach_msg_type_number_t *lockgroup_infoCntp)
{
 lockgroup_info_t *lockgroup_info_base;
 lockgroup_info_t *lockgroup_info;
 vm_offset_t lockgroup_info_addr;
 vm_size_t lockgroup_info_size;
 vm_size_t lockgroup_info_vmsize;
 lck_grp_t *lck_grp;
 unsigned int i;
 vm_map_copy_t copy;
 kern_return_t kr;

 if (host == HOST_NULL)
  return KERN_INVALID_HOST;

 lck_mtx_lock(&lck_grp_lock);

 lockgroup_info_size = lck_grp_cnt * sizeof(*lockgroup_info);
 lockgroup_info_vmsize = round_page(lockgroup_info_size);
 kr = kmem_alloc_pageable(ipc_kernel_map,
       &lockgroup_info_addr, lockgroup_info_vmsize, VM_KERN_MEMORY_IPC);
 if (kr != KERN_SUCCESS) {
  lck_mtx_unlock(&lck_grp_lock);
  return(kr);
 }

 lockgroup_info_base = (lockgroup_info_t *) lockgroup_info_addr;
 lck_grp = (lck_grp_t *)queue_first(&lck_grp_queue);
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

  (void) strncpy(lockgroup_info->lockgroup_name,lck_grp->lck_grp_name, LOCKGROUP_MAX_NAME);

  lck_grp = (lck_grp_t *)(queue_next((queue_entry_t)(lck_grp)));
  lockgroup_info++;
 }

 *lockgroup_infoCntp = lck_grp_cnt;
 lck_mtx_unlock(&lck_grp_lock);

 if (lockgroup_info_size != lockgroup_info_vmsize)
  bzero((char *)lockgroup_info, lockgroup_info_vmsize - lockgroup_info_size);

 kr = vm_map_copyin(ipc_kernel_map, (vm_map_address_t)lockgroup_info_addr,
      (vm_map_size_t)lockgroup_info_size, TRUE, &copy);
 assert(kr == KERN_SUCCESS);

 *lockgroup_infop = (lockgroup_info_t *) copy;

 return(KERN_SUCCESS);
}
