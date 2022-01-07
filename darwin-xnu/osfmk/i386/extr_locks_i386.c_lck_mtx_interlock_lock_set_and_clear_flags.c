
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int lck_mtx_state; } ;
typedef TYPE_1__ lck_mtx_t ;


 int FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 scalar_t__ __improbable (int) ;
 scalar_t__ atomic_compare_exchange32 (int *,int,int,int ,int ) ;
 int cpu_pause () ;
 int disable_preemption () ;
 int enable_preemption () ;
 int memory_order_acquire_smp ;
 int ordered_load_mtx_state (TYPE_1__*) ;

__attribute__((used)) static inline void
lck_mtx_interlock_lock_set_and_clear_flags(
 lck_mtx_t *mutex,
 uint32_t xor_flags,
 uint32_t and_flags,
 uint32_t *new_state)
{
 uint32_t state, prev;
 state = *new_state;

 for ( ; ; ) {

  while (__improbable(state & (LCK_MTX_ILOCKED_MSK | xor_flags))) {
   cpu_pause();
   state = ordered_load_mtx_state(mutex);
  }
  prev = state;
  state |= LCK_MTX_ILOCKED_MSK | xor_flags;
  state &= ~and_flags;

  disable_preemption();
  if (atomic_compare_exchange32(&mutex->lck_mtx_state, prev, state, memory_order_acquire_smp, FALSE))
   break;
  enable_preemption();
  cpu_pause();
  state = ordered_load_mtx_state(mutex);
 }
 *new_state = state;
 return;
}
