
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lock_spin_cnt; scalar_t__ lock_spin_util_cnt; scalar_t__ lock_spin_miss_cnt; scalar_t__ lockgroup_name; } ;
typedef TYPE_1__ lockgroup_info_t ;


 int printf (char*,scalar_t__) ;

void
print_spin(int requested, lockgroup_info_t *lockgroup)
{
 lockgroup_info_t *curptr = &lockgroup[requested];

 if (curptr->lock_spin_cnt != 0 && curptr->lock_spin_util_cnt != 0) {
  printf("%16lld ", curptr->lock_spin_util_cnt);
  printf("%16lld   ", curptr->lock_spin_miss_cnt);
  printf("%-14s\n", curptr->lockgroup_name);
 }
}
