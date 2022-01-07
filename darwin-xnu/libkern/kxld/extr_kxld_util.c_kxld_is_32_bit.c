
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_type_t ;
typedef int boolean_t ;


 int CPU_ARCH_ABI64 ;

boolean_t
kxld_is_32_bit(cpu_type_t cputype)
{
    return !(cputype & CPU_ARCH_ABI64);
}
