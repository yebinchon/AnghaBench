
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ MSR_IA32_PERFCTR0 ;
 void wrmsr64 (scalar_t__,int ) ;

__attribute__((used)) static void
wrIA32_PMCx(uint32_t ctr, uint64_t value)
{
 return wrmsr64(MSR_IA32_PERFCTR0 + ctr, value);
}
