
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t EXTRA_RESERVED_REGIONS ;
 int soc_reserved_memory_region_end ;
 int soc_reserved_memory_region_start ;

__attribute__((used)) static size_t s_get_num_reserved_regions(void)
{
    return ( ( &soc_reserved_memory_region_end
               - &soc_reserved_memory_region_start ) +
             EXTRA_RESERVED_REGIONS );
}
