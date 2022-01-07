
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MSR_IA32_TSC_DEADLINE ;
 int rdmsr64 (int ) ;

uint64_t
lapic_get_tsc_deadline_timer(void)
{
 return rdmsr64(MSR_IA32_TSC_DEADLINE);
}
