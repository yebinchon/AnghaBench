
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int l2_settings; int l2_cache_size; int l3_cache_size; scalar_t__ l3_settings; int l1_dcache_size; int l1_icache_size; int cache_line_size; scalar_t__ vector_unit; } ;
typedef TYPE_1__ ml_cpu_info_t ;
struct TYPE_6__ {int c_l2size; int c_dsize; int c_isize; int c_linesz; } ;
typedef TYPE_2__ cache_info_t ;


 TYPE_2__* cache_info () ;

void
ml_cpu_get_info(ml_cpu_info_t * ml_cpu_info)
{
 cache_info_t *cpuid_cache_info;

 cpuid_cache_info = cache_info();
 ml_cpu_info->vector_unit = 0;
 ml_cpu_info->cache_line_size = cpuid_cache_info->c_linesz;
 ml_cpu_info->l1_icache_size = cpuid_cache_info->c_isize;
 ml_cpu_info->l1_dcache_size = cpuid_cache_info->c_dsize;





 ml_cpu_info->l2_settings = 0;
 ml_cpu_info->l2_cache_size = 0xFFFFFFFF;

 ml_cpu_info->l3_settings = 0;
 ml_cpu_info->l3_cache_size = 0xFFFFFFFF;
}
