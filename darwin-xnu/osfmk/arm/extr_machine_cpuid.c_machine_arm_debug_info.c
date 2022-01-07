
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_debug_info_t ;


 int cpuid_debug_info ;

arm_debug_info_t *
machine_arm_debug_info(void)
{
 return &cpuid_debug_info;
}
