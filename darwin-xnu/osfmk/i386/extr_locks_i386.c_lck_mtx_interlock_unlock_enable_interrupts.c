
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int boolean_t ;


 int lck_mtx_ilk_unlock (int *) ;
 int ml_set_interrupts_enabled (int ) ;

__attribute__((used)) static inline void
lck_mtx_interlock_unlock_enable_interrupts(
 lck_mtx_t *mutex,
 boolean_t istate)
{
 lck_mtx_ilk_unlock(mutex);
 ml_set_interrupts_enabled(istate);
}
