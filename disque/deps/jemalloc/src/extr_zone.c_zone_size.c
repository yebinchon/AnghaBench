
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int config_prof ;
 size_t ivsalloc (void*,int ) ;

__attribute__((used)) static size_t
zone_size(malloc_zone_t *zone, void *ptr)
{
 return (ivsalloc(ptr, config_prof));
}
