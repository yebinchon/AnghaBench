
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef int lck_mtx_t ;


 uintptr_t ARM_LCK_WAITERS ;
 uintptr_t LCK_ILOCK ;
 scalar_t__ LCK_MTX_SPIN_TAG ;
 scalar_t__ LCK_MTX_STATE_TO_THREAD (uintptr_t) ;
 uintptr_t LCK_MTX_THREAD_MASK ;
 uintptr_t LCK_MTX_THREAD_TO_STATE (scalar_t__) ;
 scalar_t__ current_thread () ;
 int enable_preemption () ;
 int interlock_unlock (int *) ;
 int lck_mtx_lock_acquire (int *) ;
 uintptr_t ordered_load_mtx (int *) ;
 int ordered_store_mtx (int *,uintptr_t) ;
 int panic (char*,int *) ;

void
lck_mtx_convert_spin(lck_mtx_t *lock)
{
 thread_t thread = current_thread();
 uintptr_t state;
 int waiters;

 state = ordered_load_mtx(lock);
 if (LCK_MTX_STATE_TO_THREAD(state) == thread)
  return;
 if ((state & LCK_ILOCK) == 0 || (LCK_MTX_STATE_TO_THREAD(state) != (thread_t)LCK_MTX_SPIN_TAG))
  panic("lck_mtx_convert_spin: Not held as spinlock (%p)", lock);
 state &= ~(LCK_MTX_THREAD_MASK);
 ordered_store_mtx(lock, state);
 waiters = lck_mtx_lock_acquire(lock);
 state = LCK_MTX_THREAD_TO_STATE(thread);
 if (waiters != 0)
  state |= ARM_LCK_WAITERS;





 ordered_store_mtx(lock, state);
 enable_preemption();

}
