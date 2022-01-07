
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int boolean_t ;


 int TRUE ;
 int lck_mtx_lock_acquire_inline (int *) ;
 int lck_mtx_try_lock_finish_inline (int *,int ) ;
 int ordered_load_mtx_state (int *) ;

__attribute__((used)) __attribute__((noinline))
static boolean_t
lck_mtx_try_lock_acquire_tail(
 lck_mtx_t *mutex)
{
 lck_mtx_lock_acquire_inline(mutex);
 lck_mtx_try_lock_finish_inline(mutex, ordered_load_mtx_state(mutex));

 return TRUE;
}
