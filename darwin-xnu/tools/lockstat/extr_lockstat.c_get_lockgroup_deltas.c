
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lockgroup_info_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_8__ {scalar_t__ lock_rw_wait_cnt; scalar_t__ lock_rw_miss_cnt; scalar_t__ lock_rw_util_cnt; scalar_t__ lock_mtx_held_cnt; scalar_t__ lock_mtx_wait_cnt; scalar_t__ lock_mtx_miss_cnt; scalar_t__ lock_mtx_util_cnt; scalar_t__ lock_spin_miss_cnt; scalar_t__ lock_spin_util_cnt; } ;
struct TYPE_7__ {scalar_t__ lock_rw_wait_cnt; scalar_t__ lock_rw_miss_cnt; scalar_t__ lock_rw_util_cnt; scalar_t__ lock_mtx_held_cnt; scalar_t__ lock_mtx_wait_cnt; scalar_t__ lock_mtx_miss_cnt; scalar_t__ lock_mtx_util_cnt; scalar_t__ lock_spin_miss_cnt; scalar_t__ lock_spin_util_cnt; } ;


 int EXIT_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int count ;
 int exit (int ) ;
 int host_control ;
 scalar_t__ host_lockgroup_info (int ,TYPE_2__**,int*) ;
 TYPE_1__* lockgroup_deltas ;
 TYPE_2__* lockgroup_info ;
 TYPE_1__* lockgroup_start ;
 int mach_error (char*,scalar_t__) ;
 int memcpy (TYPE_1__*,TYPE_2__*,int) ;

void
get_lockgroup_deltas(void)
{
 kern_return_t kr;
 unsigned int i;

 kr = host_lockgroup_info(host_control, &lockgroup_info, &count);

 if (kr != KERN_SUCCESS)
 {
  mach_error("host_statistics", kr);
  exit (EXIT_FAILURE);
 }

 memcpy(lockgroup_deltas, lockgroup_info, count * sizeof(lockgroup_info_t));
 for (i = 0; i < count; i++) {
  lockgroup_deltas[i].lock_spin_util_cnt =
      lockgroup_info[i].lock_spin_util_cnt -
      lockgroup_start[i].lock_spin_util_cnt;
  lockgroup_deltas[i].lock_spin_miss_cnt =
      lockgroup_info[i].lock_spin_miss_cnt -
      lockgroup_start[i].lock_spin_miss_cnt;
  lockgroup_deltas[i].lock_mtx_util_cnt =
      lockgroup_info[i].lock_mtx_util_cnt -
      lockgroup_start[i].lock_mtx_util_cnt;
  lockgroup_deltas[i].lock_mtx_miss_cnt =
      lockgroup_info[i].lock_mtx_miss_cnt -
      lockgroup_start[i].lock_mtx_miss_cnt;
  lockgroup_deltas[i].lock_mtx_wait_cnt =
      lockgroup_info[i].lock_mtx_wait_cnt -
      lockgroup_start[i].lock_mtx_wait_cnt;
  lockgroup_deltas[i].lock_mtx_held_cnt =
      lockgroup_info[i].lock_mtx_held_cnt -
      lockgroup_start[i].lock_mtx_held_cnt;
  lockgroup_deltas[i].lock_rw_util_cnt =
      lockgroup_info[i].lock_rw_util_cnt -
      lockgroup_start[i].lock_rw_util_cnt;
  lockgroup_deltas[i].lock_rw_miss_cnt =
      lockgroup_info[i].lock_rw_miss_cnt -
      lockgroup_start[i].lock_rw_miss_cnt;
  lockgroup_deltas[i].lock_rw_wait_cnt =
      lockgroup_info[i].lock_rw_wait_cnt -
      lockgroup_start[i].lock_rw_wait_cnt;
 }
 memcpy(lockgroup_start, lockgroup_info, count * sizeof(lockgroup_info_t));
}
