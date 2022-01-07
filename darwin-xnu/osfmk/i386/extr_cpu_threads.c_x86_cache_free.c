
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int level; struct TYPE_4__* next; } ;
typedef TYPE_1__ x86_cpu_cache_t ;


 int MAX_CACHE_DEPTH ;
 int* num_Lx_caches ;
 int num_caches ;
 TYPE_1__* x86_caches ;

__attribute__((used)) static void
x86_cache_free(x86_cpu_cache_t *cache)
{
    num_caches -= 1;
    if (cache->level > 0 && cache->level <= MAX_CACHE_DEPTH)
 num_Lx_caches[cache->level - 1] -= 1;
    cache->next = x86_caches;
    x86_caches = cache;
}
