
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int lck_mtx_t ;
typedef int boolean_t ;
struct TYPE_3__ {int mutex_count; } ;


 int FALSE ;
 int LCK_MTX_MLOCKED_MSK ;
 int TRUE ;
 TYPE_1__* current_thread () ;
 int lck_mtx_interlock_try_lock_set_flags (int *,int ,int *) ;
 int ordered_load_mtx_state (int *) ;
 int ordered_store_mtx_owner (int *,uintptr_t) ;

__attribute__((used)) static inline boolean_t
lck_mtx_lock_grab_mutex(
 lck_mtx_t *lock)
{
 uint32_t state;

 state = ordered_load_mtx_state(lock);

 if (!lck_mtx_interlock_try_lock_set_flags(lock, LCK_MTX_MLOCKED_MSK, &state)) {
  return FALSE;
 }



 thread_t thread = current_thread();

 ordered_store_mtx_owner(lock, (uintptr_t)thread);






 return TRUE;
}
