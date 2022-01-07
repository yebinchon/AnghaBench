
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 void lck_mtx_lock_acquire_inline (int *) ;

void
lck_mtx_lock_acquire_x86(
 lck_mtx_t *mutex)
{
 return lck_mtx_lock_acquire_inline(mutex);
}
