
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int TRUE ;
 int lck_mtx_check_preemption (int *) ;
 int lck_mtx_lock_spin_internal (int *,int ) ;

void
lck_mtx_lock_spin(lck_mtx_t *lock)
{
 lck_mtx_check_preemption(lock);
 lck_mtx_lock_spin_internal(lock, TRUE);
}
