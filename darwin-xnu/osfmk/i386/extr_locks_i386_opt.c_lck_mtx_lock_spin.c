
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int lck_mtx_check_preemption () ;
 int lck_mtx_lock_spin_always (int *) ;

void
lck_mtx_lock_spin(
 lck_mtx_t *lock)
{
 lck_mtx_check_preemption();
 lck_mtx_lock_spin_always(lock);
}
