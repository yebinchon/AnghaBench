
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** caches; } ;
typedef TYPE_1__ x86_lcpu_t ;
struct TYPE_6__ {int level; int nlcpus; TYPE_1__** cpus; struct TYPE_6__* next; } ;
typedef TYPE_2__ x86_cpu_cache_t ;



__attribute__((used)) static void
x86_cache_add_lcpu(x86_cpu_cache_t *cache, x86_lcpu_t *lcpu)
{
    x86_cpu_cache_t *cur_cache;
    int i;




    cur_cache = lcpu->caches[cache->level - 1];
    lcpu->caches[cache->level - 1] = cache;
    cache->next = cur_cache;
    cache->nlcpus += 1;
    for (i = 0; i < cache->nlcpus; i += 1) {
 if (cache->cpus[i] == ((void*)0)) {
     cache->cpus[i] = lcpu;
     break;
 }
    }
}
