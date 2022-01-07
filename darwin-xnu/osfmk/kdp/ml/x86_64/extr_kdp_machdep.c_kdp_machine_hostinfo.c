
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cpus_mask; int cpu_type; int cpu_subtype; } ;
typedef TYPE_1__ kdp_hostinfo_t ;
struct TYPE_5__ {int max_cpus; } ;


 int CPU_ARCH_ABI64 ;
 int ** cpu_data_ptr ;
 int cpuid_cpusubtype () ;
 int cpuid_cputype () ;
 TYPE_2__ machine_info ;

void
kdp_machine_hostinfo(
    kdp_hostinfo_t *hostinfo
)
{
    int i;

    hostinfo->cpus_mask = 0;

    for (i = 0; i < machine_info.max_cpus; i++) {
 if (cpu_data_ptr[i] == ((void*)0))
            continue;

        hostinfo->cpus_mask |= (1 << i);
    }

    hostinfo->cpu_type = cpuid_cputype() | CPU_ARCH_ABI64;
    hostinfo->cpu_subtype = cpuid_cpusubtype();
}
