
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kern_return_t ;


 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_LOG (char*,int ) ;
 int T_QUIET ;
 int _original ;
 int host_get_atm_diagnostic_flag (int ,int *) ;
 int mach_host_self () ;

__attribute__((used)) static uint32_t
_save_atm_diagnostic_flag(void)
{
    kern_return_t kr;
    kr = host_get_atm_diagnostic_flag(mach_host_self(), &_original);
    T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "host_get_atm_diagnostic_flag()");
    T_LOG("Original ATM diagnostic flag: 0x%08x", _original);
    return _original;
}
