
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int boolean_t ;


 int TRUE ;
 int lck_mtx_ilk_unlock_inline (int *,int ) ;
 int ordered_load_mtx_state (int *) ;

boolean_t
lck_mtx_ilk_unlock(
 lck_mtx_t *mutex)
{
 lck_mtx_ilk_unlock_inline(mutex, ordered_load_mtx_state(mutex));
 return TRUE;
}
