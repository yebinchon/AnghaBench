
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mt_cpu_pmi (void*,int ) ;

void
mt_fiq(void *cpu, uint64_t pmsr, uint64_t upmsr)
{
 mt_cpu_pmi(cpu, pmsr);

#pragma unused(upmsr)
}
