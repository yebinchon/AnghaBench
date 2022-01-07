
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ MSR_IA32_PERFCTR0 ;
 int rdmsr64 (scalar_t__) ;
 int rdpmc64 (scalar_t__) ;

__attribute__((used)) static uint64_t
IA32_PMCx(uint32_t ctr)
{



 return rdmsr64(MSR_IA32_PERFCTR0 + ctr);

}
