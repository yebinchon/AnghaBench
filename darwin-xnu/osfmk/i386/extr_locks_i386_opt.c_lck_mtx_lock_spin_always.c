
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_10__ {int lck_mtx_state; } ;
typedef TYPE_2__ lck_mtx_t ;
struct TYPE_9__ {int mutex_count; } ;


 int FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;
 int LCK_MTX_SPIN_MSK ;
 int LOCKSTAT_RECORD (int ,TYPE_2__*,int ) ;
 int LS_LCK_MTX_LOCK_SPIN_ACQUIRE ;
 int atomic_compare_exchange32 (int *,int,int,int ,int ) ;
 TYPE_1__* current_thread () ;
 int disable_preemption () ;
 int enable_preemption () ;
 void lck_mtx_lock_spin_slow (TYPE_2__*) ;
 int memory_order_acquire_smp ;
 int ordered_load_mtx_state (TYPE_2__*) ;
 int ordered_store_mtx_owner (TYPE_2__*,uintptr_t) ;

__attribute__((noinline))
void
lck_mtx_lock_spin_always(
 lck_mtx_t *lock)
{
 uint32_t prev, state;

 state = ordered_load_mtx_state(lock);
 prev = state & ~(LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK);
 state = prev | LCK_MTX_ILOCKED_MSK | LCK_MTX_SPIN_MSK;

 disable_preemption();
 if (!atomic_compare_exchange32(&lock->lck_mtx_state, prev, state, memory_order_acquire_smp, FALSE)) {
  enable_preemption();
  return lck_mtx_lock_spin_slow(lock);
 }



 thread_t thread = current_thread();

 ordered_store_mtx_owner(lock, (uintptr_t)thread);
 return;
}
