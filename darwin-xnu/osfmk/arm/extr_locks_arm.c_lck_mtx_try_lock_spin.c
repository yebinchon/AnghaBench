
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int boolean_t ;


 int TRUE ;
 int lck_mtx_try_lock_spin_internal (int *,int ) ;

boolean_t
lck_mtx_try_lock_spin(lck_mtx_t *lock)
{
 return lck_mtx_try_lock_spin_internal(lock, TRUE);
}
