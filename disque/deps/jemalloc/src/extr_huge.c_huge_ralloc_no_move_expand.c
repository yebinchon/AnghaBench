
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int extent_node_t ;
struct TYPE_4__ {int huge_mtx; } ;
typedef TYPE_1__ arena_t ;


 size_t CHUNK_CEILING (size_t) ;
 scalar_t__ arena_chunk_ralloc_huge_expand (TYPE_1__*,void*,size_t,size_t,int*) ;
 scalar_t__ config_fill ;
 TYPE_1__* extent_node_arena_get (int *) ;
 int extent_node_size_set (int *,size_t) ;
 int extent_node_zeroed_get (int *) ;
 int * huge_node_get (void*) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int memset (void*,int,size_t) ;
 int opt_junk_alloc ;
 int opt_zero ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool
huge_ralloc_no_move_expand(void *ptr, size_t oldsize, size_t usize, bool zero) {
 extent_node_t *node;
 arena_t *arena;
 bool is_zeroed_subchunk, is_zeroed_chunk;

 node = huge_node_get(ptr);
 arena = extent_node_arena_get(node);
 malloc_mutex_lock(&arena->huge_mtx);
 is_zeroed_subchunk = extent_node_zeroed_get(node);
 malloc_mutex_unlock(&arena->huge_mtx);





 is_zeroed_chunk = zero;

 if (arena_chunk_ralloc_huge_expand(arena, ptr, oldsize, usize,
      &is_zeroed_chunk))
  return (1);

 malloc_mutex_lock(&arena->huge_mtx);

 extent_node_size_set(node, usize);
 malloc_mutex_unlock(&arena->huge_mtx);

 if (zero || (config_fill && unlikely(opt_zero))) {
  if (!is_zeroed_subchunk) {
   memset((void *)((uintptr_t)ptr + oldsize), 0,
       CHUNK_CEILING(oldsize) - oldsize);
  }
  if (!is_zeroed_chunk) {
   memset((void *)((uintptr_t)ptr +
       CHUNK_CEILING(oldsize)), 0, usize -
       CHUNK_CEILING(oldsize));
  }
 } else if (config_fill && unlikely(opt_junk_alloc)) {
  memset((void *)((uintptr_t)ptr + oldsize), 0xa5, usize -
      oldsize);
 }

 return (0);
}
