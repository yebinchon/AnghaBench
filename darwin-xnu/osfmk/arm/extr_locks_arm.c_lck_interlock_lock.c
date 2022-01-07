
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_rw_t ;
typedef int boolean_t ;


 int FALSE ;
 int lck_rw_ilk_lock (int *) ;
 int ml_set_interrupts_enabled (int ) ;

__attribute__((used)) static inline boolean_t
lck_interlock_lock(lck_rw_t *lck)
{
 boolean_t istate;

 istate = ml_set_interrupts_enabled(FALSE);
 lck_rw_ilk_lock(lck);
 return istate;
}
