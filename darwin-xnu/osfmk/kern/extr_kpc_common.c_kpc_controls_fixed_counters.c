
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ force_all_ctrs ;
 int kpc_pm_handler ;
 int kpc_pm_has_custom_config ;

boolean_t
kpc_controls_fixed_counters(void)
{
 return !kpc_pm_handler || force_all_ctrs || !kpc_pm_has_custom_config;
}
