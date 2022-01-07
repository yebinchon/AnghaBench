
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int cpu_CLW_active; } ;


 int FlushPoU_Dcache () ;
 int InvalidatePoU_Icache () ;
 int SCTLR_DCACHE ;
 int flush_core_tlb () ;
 TYPE_1__* getCpuDatap () ;
 int real_ncpus ;
 int up_style_idle_exit ;

void
platform_cache_idle_exit(
 void)
{
}
