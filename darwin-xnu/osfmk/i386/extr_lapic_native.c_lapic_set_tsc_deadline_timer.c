
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MSR_IA32_TSC_DEADLINE ;
 int wrmsr64 (int ,int ) ;

void
lapic_set_tsc_deadline_timer(uint64_t deadline)
{

 wrmsr64(MSR_IA32_TSC_DEADLINE, deadline);
}
