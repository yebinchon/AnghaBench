
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ thread_t ;
struct TYPE_11__ {int lck_mtx_owner; int lck_mtx_state; } ;
typedef TYPE_2__ lck_mtx_t ;
struct TYPE_10__ {int mutex_count; } ;


 int FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;
 int LCK_MTX_PROMOTED_MSK ;
 int LCK_MTX_SPIN_MSK ;
 int LCK_MTX_WAITERS_MSK ;
 scalar_t__ __improbable (int) ;
 int atomic_compare_exchange32 (int *,int,int,int ,int ) ;
 scalar_t__ current_thread () ;
 int disable_preemption () ;
 int enable_preemption () ;
 void lck_mtx_owner_check_panic (TYPE_2__*) ;
 int lck_mtx_unlock_finish_inline (TYPE_2__*,int ) ;
 void lck_mtx_unlock_slow (TYPE_2__*) ;
 int memory_order_acquire_smp ;
 int ordered_load_mtx_state (TYPE_2__*) ;
 int ordered_store_mtx_owner (TYPE_2__*,int ) ;
 int ordered_store_mtx_state_release (TYPE_2__*,int) ;

__attribute__((noinline))
void
lck_mtx_unlock(
 lck_mtx_t *lock)
{
 uint32_t prev, state;

 state = ordered_load_mtx_state(lock);

 if (state & LCK_MTX_SPIN_MSK)
  return lck_mtx_unlock_slow(lock);
 prev = state & ~(LCK_MTX_ILOCKED_MSK | LCK_MTX_WAITERS_MSK | LCK_MTX_PROMOTED_MSK);
 prev |= LCK_MTX_MLOCKED_MSK;

 state = prev | LCK_MTX_ILOCKED_MSK;
 state &= ~LCK_MTX_MLOCKED_MSK;

 disable_preemption();


 if (!atomic_compare_exchange32(&lock->lck_mtx_state, prev, state, memory_order_acquire_smp, FALSE)) {
  enable_preemption();
  return lck_mtx_unlock_slow(lock);
 }
 ordered_store_mtx_owner(lock, 0);

 state &= ~LCK_MTX_ILOCKED_MSK;
 ordered_store_mtx_state_release(lock, state);
 lck_mtx_unlock_finish_inline(lock, FALSE);
}
