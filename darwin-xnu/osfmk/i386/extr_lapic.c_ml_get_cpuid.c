
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ MAX_LAPICIDS ;
 scalar_t__* lapic_to_cpu ;

uint32_t
ml_get_cpuid(uint32_t lapic_index)
{
 if(lapic_index >= (uint32_t)MAX_LAPICIDS)
  return 0xFFFFFFFF;


 return (uint32_t)lapic_to_cpu[lapic_index];

}
