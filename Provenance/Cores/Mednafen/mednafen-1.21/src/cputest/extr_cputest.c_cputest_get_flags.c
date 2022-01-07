
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int checked ;
 int ff_get_cpu_flags_ppc () ;
 int ff_get_cpu_flags_x86 () ;
 int flags ;

int cputest_get_flags(void)
{
    if (checked)
        return flags;
    checked = 1;
    return flags;
}
