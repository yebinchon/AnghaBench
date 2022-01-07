
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_mvfp_info_t ;


 int cpuid_mvfp_info ;

arm_mvfp_info_t *
machine_arm_mvfp_info(void)
{
 return &cpuid_mvfp_info;
}
