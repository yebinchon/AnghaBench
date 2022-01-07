
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ MAX_CPUS ;
 scalar_t__* cpu_to_lapic ;

uint32_t
ml_get_apicid(uint32_t cpu)
{
 if(cpu >= (uint32_t)MAX_CPUS)
  return 0xFFFFFFFF;


 return (uint32_t)cpu_to_lapic[cpu];

}
