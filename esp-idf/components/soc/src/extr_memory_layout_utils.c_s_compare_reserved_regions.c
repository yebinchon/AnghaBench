
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; } ;
typedef TYPE_1__ soc_reserved_region_t ;



__attribute__((used)) static int s_compare_reserved_regions(const void *a, const void *b)
{
    const soc_reserved_region_t *r_a = (soc_reserved_region_t *)a;
    const soc_reserved_region_t *r_b = (soc_reserved_region_t *)b;
    return (int)r_a->start - (int)r_b->start;
}
