
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int T_LOG (char*,int ) ;
 int _needs_reset ;
 scalar_t__ host_set_atm_diagnostic_flag (int ,int ) ;
 int mach_host_self () ;

__attribute__((used)) static kern_return_t
_mutate_atm_diagnostic_flag(uint32_t v)
{
    T_LOG("Try to set ATM diagnostic flag to: 0x%08x", v);
    kern_return_t kr = host_set_atm_diagnostic_flag(mach_host_self(), v);
    if (kr == KERN_SUCCESS) _needs_reset = 1;
    return kr;
}
