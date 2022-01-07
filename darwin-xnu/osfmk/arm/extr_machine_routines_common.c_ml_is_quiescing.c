
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ FALSE ;
 int assert (int) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int ml_quiescing ;

boolean_t ml_is_quiescing(void)
{
 assert(FALSE == ml_get_interrupts_enabled());
 return (ml_quiescing);
}
