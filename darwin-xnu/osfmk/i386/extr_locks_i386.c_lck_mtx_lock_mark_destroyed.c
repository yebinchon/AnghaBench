
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lck_mtx_t ;
typedef scalar_t__ boolean_t ;


 int LCK_MTX_TAG_DESTROYED ;
 int enable_preemption () ;
 int lck_mtx_interlock_lock (int *,int *) ;
 int ordered_load_mtx_state (int *) ;
 int ordered_store_mtx_state_release (int *,int ) ;

__attribute__((used)) static void
lck_mtx_lock_mark_destroyed(
 lck_mtx_t *mutex,
 boolean_t indirect)
{
 uint32_t state;

 if (indirect) {

  ordered_store_mtx_state_release(mutex, LCK_MTX_TAG_DESTROYED);
  return;
 }

 state = ordered_load_mtx_state(mutex);
 lck_mtx_interlock_lock(mutex, &state);

 ordered_store_mtx_state_release(mutex, LCK_MTX_TAG_DESTROYED);

 enable_preemption();
}
