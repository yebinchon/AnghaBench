
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ force_all_ctrs ;
 int kpc_calling_pm ;

void
kpc_pm_acknowledge(boolean_t available_to_pm)
{





 assert(force_all_ctrs == available_to_pm);



 assert(kpc_calling_pm == 1);




 force_all_ctrs = available_to_pm ? FALSE : TRUE;
}
