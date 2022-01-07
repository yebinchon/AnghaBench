
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_14__ {int lck_mtx_owner; } ;
typedef TYPE_2__ lck_mtx_t ;
typedef int boolean_t ;
struct TYPE_13__ {int mutex_count; } ;


 int FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;
 int LCK_MTX_PROMOTED_MSK ;
 int LCK_MTX_SPIN_MSK ;
 int LCK_MTX_TAG_INDIRECT ;
 scalar_t__ LCK_MTX_WAITER ;
 int LCK_MTX_WAITERS_MSK ;
 scalar_t__ __improbable (int) ;
 TYPE_1__* current_thread () ;
 int get_indirect_mutex (TYPE_2__**,int*) ;
 int lck_mtx_interlock_lock_clear_flags (TYPE_2__*,int,int*) ;
 void lck_mtx_owner_check_panic (TYPE_2__*) ;
 int lck_mtx_unlock_finish_inline (TYPE_2__*,int ) ;
 void lck_mtx_unlock_wakeup_tail (TYPE_2__*,int,int ) ;
 int ordered_load_mtx_state (TYPE_2__*) ;
 int ordered_store_mtx_owner (TYPE_2__*,int ) ;
 int ordered_store_mtx_state_release (TYPE_2__*,int) ;

__attribute__((noinline))
void
lck_mtx_unlock_slow(
 lck_mtx_t *lock)
{
 thread_t thread;
 uint32_t state, prev;
 boolean_t indirect = FALSE;

 state = ordered_load_mtx_state(lock);


 if (__improbable(state == LCK_MTX_TAG_INDIRECT)) {
  indirect = get_indirect_mutex(&lock, &state);
 }

 thread = current_thread();
 if (__improbable((state & LCK_MTX_MLOCKED_MSK) == 0))
  goto unlock;

 lck_mtx_interlock_lock_clear_flags(lock, LCK_MTX_MLOCKED_MSK, &state);

unlock:



 ordered_store_mtx_owner(lock, 0);

 prev = state;

 state &= (~(LCK_MTX_ILOCKED_MSK | LCK_MTX_SPIN_MSK | LCK_MTX_PROMOTED_MSK));
 if ((state & LCK_MTX_WAITERS_MSK))
  state -= LCK_MTX_WAITER;
 ordered_store_mtx_state_release(lock, state);
 if ((prev & (LCK_MTX_PROMOTED_MSK | LCK_MTX_WAITERS_MSK)))
  return lck_mtx_unlock_wakeup_tail(lock, prev, indirect);


 lck_mtx_unlock_finish_inline(lock, FALSE);

 return;
}
