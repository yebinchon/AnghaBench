
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_FIXED_MASK ;
 int KPC_CLASS_POWER_MASK ;
 scalar_t__ kpc_get_configurable_pmc_mask (int ) ;
 scalar_t__ kpc_is_running_configurable (scalar_t__) ;
 scalar_t__ kpc_is_running_fixed () ;

uint32_t
kpc_get_running(void)
{
 uint64_t pmc_mask = 0;
 uint32_t cur_state = 0;

 if (kpc_is_running_fixed())
  cur_state |= KPC_CLASS_FIXED_MASK;

 pmc_mask = kpc_get_configurable_pmc_mask(KPC_CLASS_CONFIGURABLE_MASK);
 if (kpc_is_running_configurable(pmc_mask))
  cur_state |= KPC_CLASS_CONFIGURABLE_MASK;

 pmc_mask = kpc_get_configurable_pmc_mask(KPC_CLASS_POWER_MASK);
 if ((pmc_mask != 0) && kpc_is_running_configurable(pmc_mask))
  cur_state |= KPC_CLASS_POWER_MASK;

 return cur_state;
}
