
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usimple_lock_t ;
typedef int lck_spin_t ;
typedef scalar_t__ boolean_t ;


 int FALSE ;
 int pltrace (int ) ;
 int usimple_lock_try (int ) ;

boolean_t
lck_spin_try_lock(
 lck_spin_t *lck)
{
 boolean_t lrval = (boolean_t)usimple_lock_try((usimple_lock_t) lck);





 return(lrval);
}
