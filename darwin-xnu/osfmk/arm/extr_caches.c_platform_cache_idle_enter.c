
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ cpu_CLWClean_req; scalar_t__ cpu_CLWFlush_req; scalar_t__ cpu_CLW_active; } ;
typedef TYPE_1__ cpu_data_t ;


 int CleanPoC_DcacheRegion (int ,int) ;
 int CleanPoU_Dcache () ;
 int FlushPoU_Dcache () ;
 TYPE_1__* getCpuDatap () ;
 int platform_cache_disable () ;
 int real_ncpus ;
 scalar_t__ up_style_idle_exit ;

void
platform_cache_idle_enter(
 void)
{
 CleanPoU_Dcache();
}
