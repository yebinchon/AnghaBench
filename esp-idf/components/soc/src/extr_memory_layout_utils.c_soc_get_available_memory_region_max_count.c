
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t s_get_num_reserved_regions () ;
 size_t soc_memory_region_count ;

size_t soc_get_available_memory_region_max_count(void)
{



    return soc_memory_region_count + s_get_num_reserved_regions();
}
