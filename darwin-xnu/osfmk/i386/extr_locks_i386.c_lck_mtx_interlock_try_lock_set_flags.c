
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lck_mtx_state; } ;
typedef TYPE_1__ lck_mtx_t ;


 int FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 scalar_t__ atomic_compare_exchange32 (int *,int,int,int ,int ) ;
 int disable_preemption () ;
 int enable_preemption () ;
 int memory_order_acquire_smp ;

__attribute__((used)) static inline int
lck_mtx_interlock_try_lock_set_flags(
 lck_mtx_t *mutex,
 uint32_t or_flags,
 uint32_t *new_state)
{
 uint32_t state, prev;
 state = *new_state;


 if (state & (LCK_MTX_ILOCKED_MSK | or_flags)) {
  return 0;
 }
 prev = state;
 state |= LCK_MTX_ILOCKED_MSK | or_flags;
 disable_preemption();
 if (atomic_compare_exchange32(&mutex->lck_mtx_state, prev, state, memory_order_acquire_smp, FALSE)) {
   *new_state = state;
   return 1;
 }

 enable_preemption();
 return 0;
}
