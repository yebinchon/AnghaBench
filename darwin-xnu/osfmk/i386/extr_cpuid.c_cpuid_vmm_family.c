
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int cpuid_vmm_family; } ;


 TYPE_1__* cpuid_vmm_info () ;

uint32_t
cpuid_vmm_family(void)
{
 return cpuid_vmm_info()->cpuid_vmm_family;
}
