
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t MT_CORE_CYCLES ;
 int MT_CORE_NFIXED ;
 int mt_core_supported ;
 int mt_fixed_counts (int *) ;

uint64_t
mt_cur_cpu_cycles(void)
{
 uint64_t counts[MT_CORE_NFIXED];

 if (!mt_core_supported) {
  return 0;
 }

 mt_fixed_counts(counts);
 return counts[MT_CORE_CYCLES];
}
