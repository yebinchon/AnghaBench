
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int extent_node_t ;
struct TYPE_9__ {scalar_t__ (* split ) (void*,size_t,size_t,size_t,int,int ) ;} ;
typedef TYPE_1__ chunk_hooks_t ;
struct TYPE_10__ {int huge_mtx; int ind; } ;
typedef TYPE_2__ arena_t ;


 int CHUNK_ADDR2BASE (uintptr_t) ;
 int CHUNK_ADDR2OFFSET (uintptr_t) ;
 size_t CHUNK_CEILING (size_t) ;
 int arena_chunk_ralloc_huge_shrink (TYPE_2__*,void*,size_t,size_t) ;
 int assert (int) ;
 TYPE_1__ chunk_hooks_get (TYPE_2__*) ;
 int chunk_purge_wrapper (TYPE_2__*,TYPE_1__*,int ,size_t,int ,size_t) ;
 scalar_t__ config_fill ;
 TYPE_2__* extent_node_arena_get (int *) ;
 int extent_node_size_set (int *,size_t) ;
 int extent_node_zeroed_get (int *) ;
 int extent_node_zeroed_set (int *,int) ;
 int huge_dalloc_junk (void*,size_t) ;
 int * huge_node_get (void*) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int opt_junk_free ;
 scalar_t__ stub1 (void*,size_t,size_t,size_t,int,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool
huge_ralloc_no_move_shrink(void *ptr, size_t oldsize, size_t usize)
{
 extent_node_t *node;
 arena_t *arena;
 chunk_hooks_t chunk_hooks;
 size_t cdiff;
 bool pre_zeroed, post_zeroed;

 node = huge_node_get(ptr);
 arena = extent_node_arena_get(node);
 pre_zeroed = extent_node_zeroed_get(node);
 chunk_hooks = chunk_hooks_get(arena);

 assert(oldsize > usize);


 cdiff = CHUNK_CEILING(oldsize) - CHUNK_CEILING(usize);
 if (cdiff != 0 && chunk_hooks.split(ptr, CHUNK_CEILING(oldsize),
     CHUNK_CEILING(usize), cdiff, 1, arena->ind))
  return (1);

 if (oldsize > usize) {
  size_t sdiff = oldsize - usize;
  if (config_fill && unlikely(opt_junk_free)) {
   huge_dalloc_junk((void *)((uintptr_t)ptr + usize),
       sdiff);
   post_zeroed = 0;
  } else {
   post_zeroed = !chunk_purge_wrapper(arena, &chunk_hooks,
       CHUNK_ADDR2BASE((uintptr_t)ptr + usize),
       CHUNK_CEILING(oldsize),
       CHUNK_ADDR2OFFSET((uintptr_t)ptr + usize), sdiff);
  }
 } else
  post_zeroed = pre_zeroed;

 malloc_mutex_lock(&arena->huge_mtx);

 extent_node_size_set(node, usize);

 extent_node_zeroed_set(node, post_zeroed);
 malloc_mutex_unlock(&arena->huge_mtx);


 arena_chunk_ralloc_huge_shrink(arena, ptr, oldsize, usize);

 return (0);
}
