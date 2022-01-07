
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_cpu_info_t ;


 int cpuid_cpu_info ;

arm_cpu_info_t *
cpuid_info(void)
{
 return &cpuid_cpu_info;
}
