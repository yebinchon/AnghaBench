
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* profc_probe; } ;
typedef TYPE_1__ profile_probe_percpu_t ;
typedef int dtrace_cpu_t ;


 int ASSERT (int) ;

__attribute__((used)) static void
profile_offline(void *arg, dtrace_cpu_t *cpu, void *oarg)
{
 profile_probe_percpu_t *pcpu = oarg;

 ASSERT(pcpu->profc_probe == arg);
#pragma unused(pcpu,arg,cpu)
}
