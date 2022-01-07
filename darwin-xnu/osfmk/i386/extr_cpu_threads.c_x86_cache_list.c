
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int level; scalar_t__ cache_size; struct TYPE_5__* next; int line_size; int partitions; int maxcpus; scalar_t__ nlcpus; } ;
typedef TYPE_1__ x86_cpu_cache_t ;
struct cpu_cache {scalar_t__ type; int level; } ;
struct TYPE_6__ {scalar_t__* cache_size; int cache_linesize; int * cache_partitions; int * cache_sharing; } ;


 int LCACHE_MAX ;
 struct cpu_cache* cpu_caches ;
 TYPE_4__* cpuid_info () ;
 int* num_Lx_caches ;
 TYPE_1__* x86_cache_alloc () ;

__attribute__((used)) static x86_cpu_cache_t *
x86_cache_list(void)
{
    x86_cpu_cache_t *root = ((void*)0);
    x86_cpu_cache_t *cur = ((void*)0);
    x86_cpu_cache_t *last = ((void*)0);
    struct cpu_cache *cachep;
    int i;





    for (i = 0, cachep = &cpu_caches[0]; i < LCACHE_MAX; i++, cachep++) {

 if (cachep->type == 0 || cpuid_info()->cache_size[i] == 0)
     continue;

 cur = x86_cache_alloc();
 if (cur == ((void*)0))
     break;

 cur->type = cachep->type;
 cur->level = cachep->level;
 cur->nlcpus = 0;
 cur->maxcpus = cpuid_info()->cache_sharing[i];
 cur->partitions = cpuid_info()->cache_partitions[i];
 cur->cache_size = cpuid_info()->cache_size[i];
 cur->line_size = cpuid_info()->cache_linesize;

 if (last == ((void*)0)) {
     root = cur;
     last = cur;
 } else {
     last->next = cur;
     last = cur;
 }
 num_Lx_caches[cur->level - 1] += 1;
    }
    return root;
}
