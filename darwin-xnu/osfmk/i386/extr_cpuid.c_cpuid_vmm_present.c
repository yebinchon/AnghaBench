
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int CPUID_FEATURE_VMM ;
 int FALSE ;
 int TRUE ;
 int cpuid_features () ;

boolean_t
cpuid_vmm_present(void)
{
 return (cpuid_features() & CPUID_FEATURE_VMM) ? TRUE : FALSE;
}
