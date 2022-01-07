
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entries; } ;
struct TYPE_5__ {TYPE_1__ map; } ;
typedef TYPE_2__ KHRN_CACHE_T ;



int khrn_cache_get_entries(KHRN_CACHE_T *cache)
{
   return cache->map.entries;
}
