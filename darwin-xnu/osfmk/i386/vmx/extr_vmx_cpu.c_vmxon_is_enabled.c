
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int MSR_IA32_FEATCTL_VMXON ;
 int MSR_IA32_FEATURE_CONTROL ;
 int rdmsr64 (int ) ;
 scalar_t__ vmx_is_available () ;

__attribute__((used)) static inline boolean_t
vmxon_is_enabled(void)
{
 return (vmx_is_available() &&
  (rdmsr64(MSR_IA32_FEATURE_CONTROL) & MSR_IA32_FEATCTL_VMXON));
}
