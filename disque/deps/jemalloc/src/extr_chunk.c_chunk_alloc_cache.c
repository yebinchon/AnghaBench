
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int chunk_hooks_t ;
struct TYPE_4__ {int chunks_ad_cached; int chunks_szad_cached; } ;
typedef TYPE_1__ arena_t ;


 int JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED (void*,size_t) ;
 int assert (int) ;
 void* chunk_recycle (TYPE_1__*,int *,int *,int *,int,void*,size_t,size_t,int*,int*,int) ;
 size_t chunksize_mask ;
 scalar_t__ config_valgrind ;

void *
chunk_alloc_cache(arena_t *arena, chunk_hooks_t *chunk_hooks, void *new_addr,
    size_t size, size_t alignment, bool *zero, bool dalloc_node)
{
 void *ret;
 bool commit;

 assert(size != 0);
 assert((size & chunksize_mask) == 0);
 assert(alignment != 0);
 assert((alignment & chunksize_mask) == 0);

 commit = 1;
 ret = chunk_recycle(arena, chunk_hooks, &arena->chunks_szad_cached,
     &arena->chunks_ad_cached, 1, new_addr, size, alignment, zero,
     &commit, dalloc_node);
 if (ret == ((void*)0))
  return (((void*)0));
 assert(commit);
 if (config_valgrind)
  JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(ret, size);
 return (ret);
}
