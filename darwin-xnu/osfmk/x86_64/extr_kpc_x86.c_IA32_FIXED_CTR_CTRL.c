
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MSR_IA32_PERF_FIXED_CTR_CTRL ;
 int rdmsr64 (int ) ;

__attribute__((used)) static uint64_t
IA32_FIXED_CTR_CTRL(void)
{
 return rdmsr64( MSR_IA32_PERF_FIXED_CTR_CTRL );
}
