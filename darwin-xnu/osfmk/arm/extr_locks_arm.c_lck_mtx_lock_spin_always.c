
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int FALSE ;
 int lck_mtx_lock_spin_internal (int *,int ) ;

void
lck_mtx_lock_spin_always(lck_mtx_t *lock)
{
 lck_mtx_lock_spin_internal(lock, FALSE);
}
