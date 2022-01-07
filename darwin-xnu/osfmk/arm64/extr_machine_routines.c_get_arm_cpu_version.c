
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MIDR_EL1_REV_MASK ;
 int MIDR_EL1_REV_SHIFT ;
 int MIDR_EL1_VAR_MASK ;
 int MIDR_EL1_VAR_SHIFT ;
 int get_midr_el1 () ;

uint32_t get_arm_cpu_version(void)
{
 uint32_t value = get_midr_el1();


 return ((value & MIDR_EL1_REV_MASK) >> MIDR_EL1_REV_SHIFT) | ((value & MIDR_EL1_VAR_MASK) >> (MIDR_EL1_VAR_SHIFT - 4));
}
