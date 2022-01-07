
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; } ;
typedef TYPE_1__ ccv_cache_t ;


 int _ccv_cache_lru (TYPE_1__*) ;

__attribute__((used)) static void _ccv_cache_depleted(ccv_cache_t* cache, size_t size)
{
 while (cache->size > size)
  _ccv_cache_lru(cache);
}
