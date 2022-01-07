
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kern_return_t ;


 int KERN_NOT_SUPPORTED ;
 int KERN_SUCCESS ;
 int atm_diagnostic_config ;
 int commpage_update_atm_diagnostic_config (int ) ;
 scalar_t__ disable_atm ;

kern_return_t
atm_set_diagnostic_config(uint32_t diagnostic_config)
{
 if (disable_atm)
  return KERN_NOT_SUPPORTED;

 atm_diagnostic_config = diagnostic_config;
 commpage_update_atm_diagnostic_config(atm_diagnostic_config);

 return KERN_SUCCESS;
}
