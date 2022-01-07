
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ thread_count; scalar_t__ core_count; } ;
typedef TYPE_1__ i386_cpu_info_t ;
typedef int boolean_t ;


 TYPE_1__* cpuid_info () ;

__attribute__((used)) static boolean_t
cpu_is_hyperthreaded(void)
{
    i386_cpu_info_t *cpuinfo;

    cpuinfo = cpuid_info();
    return(cpuinfo->thread_count > cpuinfo->core_count);
}
