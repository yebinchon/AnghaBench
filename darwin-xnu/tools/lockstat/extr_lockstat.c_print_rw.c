
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lock_rw_cnt; scalar_t__ lock_rw_util_cnt; scalar_t__ lockgroup_name; int lock_rw_wait_cnt; int lock_rw_miss_cnt; } ;
typedef TYPE_1__ lockgroup_info_t ;


 int printf (char*,scalar_t__,...) ;

void
print_rw(int requested, lockgroup_info_t *lockgroup)
{
 lockgroup_info_t *curptr = &lockgroup[requested];

 if (curptr->lock_rw_cnt != 0 && curptr->lock_rw_util_cnt != 0) {
  printf("%16lld ", curptr->lock_rw_util_cnt);
  printf("%16lld %16lld   ", curptr->lock_rw_miss_cnt, curptr->lock_rw_wait_cnt);
  printf("%-14s\n", curptr->lockgroup_name);
 }
}
