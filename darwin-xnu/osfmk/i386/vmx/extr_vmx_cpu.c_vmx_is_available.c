
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int CPUID_FEATURE_VMX ;
 int cpuid_features () ;

__attribute__((used)) static inline boolean_t
vmx_is_available(void)
{
 return (0 != (cpuid_features() & CPUID_FEATURE_VMX));
}
