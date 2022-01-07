
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int x86_lcpu_t ;
struct TYPE_6__ {int maxcpus; int ** cpus; struct TYPE_6__* next; } ;
typedef TYPE_1__ x86_cpu_cache_t ;


 int MAX_CPUS ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* kalloc (int) ;
 int num_caches ;
 TYPE_1__* x86_caches ;

__attribute__((used)) static x86_cpu_cache_t *
x86_cache_alloc(void)
{
    x86_cpu_cache_t *cache;
    int i;

    if (x86_caches == ((void*)0)) {
 cache = kalloc(sizeof(x86_cpu_cache_t) + (MAX_CPUS * sizeof(x86_lcpu_t *)));
 if (cache == ((void*)0))
     return(((void*)0));
    } else {
 cache = x86_caches;
 x86_caches = cache->next;
 cache->next = ((void*)0);
    }

    bzero(cache, sizeof(x86_cpu_cache_t));
    cache->next = ((void*)0);
    cache->maxcpus = MAX_CPUS;
    for (i = 0; i < cache->maxcpus; i += 1) {
 cache->cpus[i] = ((void*)0);
    }

    num_caches += 1;

    return(cache);
}
