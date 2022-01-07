
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int version; } ;
struct TYPE_5__ {TYPE_1__ cpuid_arch_perf_leaf; } ;
typedef TYPE_2__ i386_cpu_info_t ;


 TYPE_2__* cpuid_info () ;
 int kpc_supported ;

void
kpc_arch_init(void)
{
 i386_cpu_info_t *info = cpuid_info();
 uint8_t version_id = info->cpuid_arch_perf_leaf.version;



 if (version_id < 2) {
  kpc_supported = 0;
 }
}
