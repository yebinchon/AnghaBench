
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpu_type_t ;
struct TYPE_2__ {int cpuid_cpu_type; } ;


 TYPE_1__* cpuid_info () ;

cpu_type_t
cpuid_cputype(void)
{
 return cpuid_info()->cpuid_cpu_type;
}
