
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int extent_node_t ;
typedef int chunk_hooks_t ;
struct TYPE_5__ {int huge_mtx; } ;
typedef TYPE_1__ arena_t ;


 int CHUNK_CEILING (size_t) ;
 int CHUNK_HOOKS_INITIALIZER ;
 int arena_chunk_ralloc_huge_similar (TYPE_1__*,void*,size_t,size_t) ;
 int assert (int) ;
 int chunk_purge_wrapper (TYPE_1__*,int *,void*,int ,size_t,size_t) ;
 scalar_t__ config_fill ;
 TYPE_1__* extent_node_arena_get (int *) ;
 size_t extent_node_size_get (int *) ;
 int extent_node_size_set (int *,size_t) ;
 int extent_node_zeroed_get (int *) ;
 int extent_node_zeroed_set (int *,int) ;
 int * huge_node_get (void*) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int memset (void*,int,size_t) ;
 int opt_junk_alloc ;
 int opt_junk_free ;
 int opt_zero ;
 size_t s2u (size_t) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
huge_ralloc_no_move_similar(void *ptr, size_t oldsize, size_t usize_min,
    size_t usize_max, bool zero)
{
 size_t usize, usize_next;
 extent_node_t *node;
 arena_t *arena;
 chunk_hooks_t chunk_hooks = CHUNK_HOOKS_INITIALIZER;
 bool pre_zeroed, post_zeroed;


 for (usize = usize_min; usize < usize_max && (usize_next = s2u(usize+1))
     <= oldsize; usize = usize_next)
  ;

 if (oldsize == usize)
  return;

 node = huge_node_get(ptr);
 arena = extent_node_arena_get(node);
 pre_zeroed = extent_node_zeroed_get(node);


 if (oldsize > usize) {
  size_t sdiff = oldsize - usize;
  if (config_fill && unlikely(opt_junk_free)) {
   memset((void *)((uintptr_t)ptr + usize), 0x5a, sdiff);
   post_zeroed = 0;
  } else {
   post_zeroed = !chunk_purge_wrapper(arena, &chunk_hooks,
       ptr, CHUNK_CEILING(oldsize), usize, sdiff);
  }
 } else
  post_zeroed = pre_zeroed;

 malloc_mutex_lock(&arena->huge_mtx);

 assert(extent_node_size_get(node) != usize);
 extent_node_size_set(node, usize);

 extent_node_zeroed_set(node, post_zeroed);
 malloc_mutex_unlock(&arena->huge_mtx);

 arena_chunk_ralloc_huge_similar(arena, ptr, oldsize, usize);


 if (oldsize < usize) {
  if (zero || (config_fill && unlikely(opt_zero))) {
   if (!pre_zeroed) {
    memset((void *)((uintptr_t)ptr + oldsize), 0,
        usize - oldsize);
   }
  } else if (config_fill && unlikely(opt_junk_alloc)) {
   memset((void *)((uintptr_t)ptr + oldsize), 0xa5, usize -
       oldsize);
  }
 }
}
