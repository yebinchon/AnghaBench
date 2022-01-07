
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_rw_t ;
typedef int boolean_t ;


 int lck_rw_ilk_unlock (int *) ;
 int ml_set_interrupts_enabled (int ) ;

__attribute__((used)) static inline void
lck_interlock_unlock(lck_rw_t *lck, boolean_t istate)
{
 lck_rw_ilk_unlock(lck);
 ml_set_interrupts_enabled(istate);
}
