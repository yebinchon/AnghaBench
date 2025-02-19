
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef int lck_mtx_t ;


 unsigned int LCK_MTX_ASSERT_NOTOWNED ;
 unsigned int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ LCK_MTX_SPIN_TAG ;
 scalar_t__ LCK_MTX_STATE_TO_THREAD (uintptr_t) ;
 scalar_t__ current_thread () ;
 uintptr_t ordered_load_mtx (int *) ;
 int panic (char*,unsigned int) ;

void
lck_mtx_assert(lck_mtx_t *lock, unsigned int type)
{
 thread_t thread, holder;
 uintptr_t state;

 state = ordered_load_mtx(lock);
 holder = LCK_MTX_STATE_TO_THREAD(state);
 if (holder == (thread_t)LCK_MTX_SPIN_TAG) {

  return;
 }
 thread = current_thread();
 if (type == LCK_MTX_ASSERT_OWNED) {
  if (thread != holder)
   panic("lck_mtx_assert(): mutex (%p) owned", lock);
 } else if (type == LCK_MTX_ASSERT_NOTOWNED) {
  if (thread == holder)
   panic("lck_mtx_assert(): mutex (%p) not owned", lock);
 } else
  panic("lck_mtx_assert(): invalid arg (%u)", type);
}
