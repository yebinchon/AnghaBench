
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int boolean_t ;


 int TRUE ;
 int interlock_unlock (int *) ;

boolean_t
lck_mtx_ilk_unlock(lck_mtx_t *lock)
{
 interlock_unlock(lock);
 return TRUE;
}
