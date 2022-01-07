
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_AMD_3DNOW ;
 int CPUID_AXP ;
 int CPUID_GENERIC ;
 int CPUID_INTEL_KATMAI ;
 int CPUID_INTEL_MMX ;
 int CPUID_INTEL_PENTIUM ;
 int CPUID_INTEL_UNSUPPORTED ;
 scalar_t__ Is3DNOW () ;
 scalar_t__ IsKNI () ;
 int IsMMX () ;
 int IsPentium () ;

int Sys_GetProcessorId( void )
{



 return CPUID_GENERIC;
}
