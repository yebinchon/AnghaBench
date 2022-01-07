
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lck_mtx_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ lck_mtx_interlock_try_lock (int *,int *) ;
 int ml_set_interrupts_enabled (int ) ;
 int ordered_load_mtx_state (int *) ;

__attribute__((used)) static inline int
lck_mtx_interlock_try_lock_disable_interrupts(
 lck_mtx_t *mutex,
 boolean_t *istate)
{
 uint32_t state;

 *istate = ml_set_interrupts_enabled(FALSE);
 state = ordered_load_mtx_state(mutex);

 if (lck_mtx_interlock_try_lock(mutex, &state)) {
  return 1;
 } else {
  ml_set_interrupts_enabled(*istate);
  return 0;
 }
}
