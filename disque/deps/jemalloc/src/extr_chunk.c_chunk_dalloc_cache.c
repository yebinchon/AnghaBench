
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int chunk_hooks_t ;
struct TYPE_5__ {int chunks_ad_cached; int chunks_szad_cached; } ;
typedef TYPE_1__ arena_t ;


 void* CHUNK_ADDR2BASE (void*) ;
 int arena_maybe_purge (TYPE_1__*) ;
 int assert (int) ;
 int chunk_record (TYPE_1__*,int *,int *,int *,int,void*,size_t,int,int) ;
 size_t chunksize_mask ;

void
chunk_dalloc_cache(arena_t *arena, chunk_hooks_t *chunk_hooks, void *chunk,
    size_t size, bool committed)
{

 assert(chunk != ((void*)0));
 assert(CHUNK_ADDR2BASE(chunk) == chunk);
 assert(size != 0);
 assert((size & chunksize_mask) == 0);

 chunk_record(arena, chunk_hooks, &arena->chunks_szad_cached,
     &arena->chunks_ad_cached, 1, chunk, size, 0, committed);
 arena_maybe_purge(arena);
}
