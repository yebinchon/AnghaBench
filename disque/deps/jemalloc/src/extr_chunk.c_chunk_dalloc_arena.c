
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* decommit ) (void*,size_t,int ,size_t,int ) ;int (* purge ) (void*,size_t,int ,size_t,int ) ;int (* dalloc ) (void*,size_t,int,int ) ;} ;
typedef TYPE_1__ chunk_hooks_t ;
struct TYPE_10__ {int chunks_ad_retained; int chunks_szad_retained; int ind; } ;
typedef TYPE_2__ arena_t ;


 void* CHUNK_ADDR2BASE (void*) ;
 int assert (int) ;
 int chunk_hooks_assure_initialized (TYPE_2__*,TYPE_1__*) ;
 int chunk_record (TYPE_2__*,TYPE_1__*,int *,int *,int,void*,size_t,int,int) ;
 size_t chunksize_mask ;
 int stub1 (void*,size_t,int,int ) ;
 int stub2 (void*,size_t,int ,size_t,int ) ;
 int stub3 (void*,size_t,int ,size_t,int ) ;

void
chunk_dalloc_arena(arena_t *arena, chunk_hooks_t *chunk_hooks, void *chunk,
    size_t size, bool zeroed, bool committed)
{

 assert(chunk != ((void*)0));
 assert(CHUNK_ADDR2BASE(chunk) == chunk);
 assert(size != 0);
 assert((size & chunksize_mask) == 0);

 chunk_hooks_assure_initialized(arena, chunk_hooks);

 if (!chunk_hooks->dalloc(chunk, size, committed, arena->ind))
  return;

 if (committed) {
  committed = chunk_hooks->decommit(chunk, size, 0, size,
      arena->ind);
 }
 zeroed = !committed || !chunk_hooks->purge(chunk, size, 0, size,
     arena->ind);
 chunk_record(arena, chunk_hooks, &arena->chunks_szad_retained,
     &arena->chunks_ad_retained, 0, chunk, size, zeroed, committed);
}
