
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int T_ASSERT_FAIL (char*,int ) ;
 int T_LOG (char*,int ) ;
 int _needs_reset ;
 int _original ;
 scalar_t__ host_set_atm_diagnostic_flag (int ,int ) ;
 int mach_error_string (scalar_t__) ;
 int mach_host_self () ;

__attribute__((used)) static void
_reset_atm_diagnostic_flag(void)
{
    if (!_needs_reset) return;
    T_LOG("Reset ATM diagnostic flag to: 0x%08x", _original);
    kern_return_t kr;
    kr = host_set_atm_diagnostic_flag(mach_host_self(), _original);
    if (kr != KERN_SUCCESS) {
        T_ASSERT_FAIL("host_set_atm_diagnostic_flag() failed: %s",
                mach_error_string(kr));
    }
}
