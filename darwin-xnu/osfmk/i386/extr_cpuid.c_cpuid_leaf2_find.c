
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ cpuid_cache_descriptor_t ;


 unsigned int INTEL_LEAF2_DESC_NUM ;
 TYPE_1__* intel_cpuid_leaf2_descriptor_table ;

__attribute__((used)) static inline cpuid_cache_descriptor_t *
cpuid_leaf2_find(uint8_t value)
{
 unsigned int i;

 for (i = 0; i < INTEL_LEAF2_DESC_NUM; i++)
  if (intel_cpuid_leaf2_descriptor_table[i].value == value)
   return &intel_cpuid_leaf2_descriptor_table[i];
 return ((void*)0);
}
