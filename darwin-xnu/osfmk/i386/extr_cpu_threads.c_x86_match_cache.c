
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ maxcpus; scalar_t__ type; scalar_t__ level; scalar_t__ partitions; scalar_t__ line_size; scalar_t__ cache_size; struct TYPE_5__* next; } ;
typedef TYPE_1__ x86_cpu_cache_t ;



__attribute__((used)) static x86_cpu_cache_t *
x86_match_cache(x86_cpu_cache_t *list, x86_cpu_cache_t *matcher)
{
    x86_cpu_cache_t *cur_cache;

    cur_cache = list;
    while (cur_cache != ((void*)0)) {
 if (cur_cache->maxcpus == matcher->maxcpus
     && cur_cache->type == matcher->type
     && cur_cache->level == matcher->level
     && cur_cache->partitions == matcher->partitions
     && cur_cache->line_size == matcher->line_size
     && cur_cache->cache_size == matcher->cache_size)
     break;

 cur_cache = cur_cache->next;
    }

    return(cur_cache);
}
