
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ lck_rw_shared_count; scalar_t__ lck_w_waiting; scalar_t__ lck_r_waiting; scalar_t__ lck_rw_can_sleep; } ;
typedef TYPE_1__ lck_rw_t ;
struct TYPE_5__ {scalar_t__ max_cpus; } ;


 scalar_t__ MutexSpin ;
 scalar_t__ mach_absolute_time () ;
 TYPE_2__ machine_info ;

__attribute__((used)) static inline uint64_t
lck_rw_deadline_for_spin(lck_rw_t *lck)
{
 if (lck->lck_rw_can_sleep) {
  if (lck->lck_r_waiting || lck->lck_w_waiting || lck->lck_rw_shared_count > machine_info.max_cpus) {
   return (mach_absolute_time());
  }
  return (mach_absolute_time() + MutexSpin);
 } else
  return (mach_absolute_time() + (100000LL * 1000000000LL));
}
