
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ MSR_IA32_PERF_FIXED_CTR0 ;
 int RDPMC_FIXED_COUNTER_SELECTOR ;
 int rdmsr64 (scalar_t__) ;
 int rdpmc64 (int) ;

__attribute__((used)) static uint64_t
IA32_FIXED_CTRx(uint32_t ctr)
{



 return rdmsr64(MSR_IA32_PERF_FIXED_CTR0 + ctr);

}
