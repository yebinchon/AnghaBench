
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int lck_mtx_convert_spin_finish_inline (int *,int ) ;
 int lck_mtx_lock_acquire_inline (int *) ;
 int ordered_load_mtx_state (int *) ;

__attribute__((used)) __attribute__((noinline))
static void
lck_mtx_convert_spin_acquire_tail(
 lck_mtx_t *mutex)
{
 lck_mtx_lock_acquire_inline(mutex);
 lck_mtx_convert_spin_finish_inline(mutex, ordered_load_mtx_state(mutex));
}
