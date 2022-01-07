
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kpc_pm_handler_t ;
typedef int boolean_t ;


 int TRUE ;
 int kpc_reserve_pm_counters (int,int ,int ) ;

boolean_t
kpc_register_pm_handler(kpc_pm_handler_t handler)
{
 return kpc_reserve_pm_counters(0x38, handler, TRUE);
}
