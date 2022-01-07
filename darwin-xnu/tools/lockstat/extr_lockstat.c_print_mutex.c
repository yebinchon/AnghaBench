
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lock_mtx_cnt; scalar_t__ lock_mtx_util_cnt; scalar_t__ lockgroup_name; int lock_mtx_wait_cnt; int lock_mtx_miss_cnt; int lock_mtx_held_cnt; } ;
typedef TYPE_1__ lockgroup_info_t ;


 int printf (char*,scalar_t__,...) ;

void
print_mutex(int requested, lockgroup_info_t *lockgroup)
{
 lockgroup_info_t *curptr = &lockgroup[requested];

 if (curptr->lock_mtx_cnt != 0 && curptr->lock_mtx_util_cnt != 0) {
  printf("%16lld ", curptr->lock_mtx_util_cnt);

  printf("%10lld %10lld %10lld   ", curptr->lock_mtx_miss_cnt, curptr->lock_mtx_wait_cnt, curptr->lock_mtx_held_cnt);



  printf("%-14s\n", curptr->lockgroup_name);
 }
}
