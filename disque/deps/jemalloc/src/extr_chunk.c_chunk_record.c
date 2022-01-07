
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int extent_tree_t ;
typedef int extent_node_t ;
struct TYPE_14__ {int (* merge ) (void*,uintptr_t,void*,size_t,int,int ) ;} ;
typedef TYPE_1__ chunk_hooks_t ;
struct TYPE_15__ {int chunks_mtx; int ind; } ;
typedef TYPE_2__ arena_t ;


 int JEMALLOC_VALGRIND_MAKE_MEM_NOACCESS (void*,size_t) ;
 int arena_chunk_cache_maybe_insert (TYPE_2__*,int *,int) ;
 int arena_chunk_cache_maybe_remove (TYPE_2__*,int *,int) ;
 int * arena_node_alloc (TYPE_2__*) ;
 int arena_node_dalloc (TYPE_2__*,int *) ;
 int assert (int) ;
 int chunk_hooks_assure_initialized_locked (TYPE_2__*,TYPE_1__*) ;
 int chunk_purge_wrapper (TYPE_2__*,TYPE_1__*,void*,size_t,int ,size_t) ;
 void* extent_node_addr_get (int *) ;
 int extent_node_addr_set (int *,void*) ;
 int extent_node_committed_get (int *) ;
 int extent_node_init (int *,TYPE_2__*,void*,size_t,int,int) ;
 uintptr_t extent_node_size_get (int *) ;
 int extent_node_size_set (int *,uintptr_t) ;
 scalar_t__ extent_node_zeroed_get (int *) ;
 int extent_node_zeroed_set (int *,int) ;
 int extent_tree_ad_insert (int *,int *) ;
 int * extent_tree_ad_nsearch (int *,int *) ;
 int * extent_tree_ad_prev (int *,int *) ;
 int extent_tree_ad_remove (int *,int *) ;
 int extent_tree_szad_insert (int *,int *) ;
 int extent_tree_szad_remove (int *,int *) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int stub1 (void*,size_t,void*,uintptr_t,int,int ) ;
 int stub2 (void*,uintptr_t,void*,size_t,int,int ) ;

__attribute__((used)) static void
chunk_record(arena_t *arena, chunk_hooks_t *chunk_hooks,
    extent_tree_t *chunks_szad, extent_tree_t *chunks_ad, bool cache,
    void *chunk, size_t size, bool zeroed, bool committed)
{
 bool unzeroed;
 extent_node_t *node, *prev;
 extent_node_t key;

 assert(!cache || !zeroed);
 unzeroed = cache || !zeroed;
 JEMALLOC_VALGRIND_MAKE_MEM_NOACCESS(chunk, size);

 malloc_mutex_lock(&arena->chunks_mtx);
 chunk_hooks_assure_initialized_locked(arena, chunk_hooks);
 extent_node_init(&key, arena, (void *)((uintptr_t)chunk + size), 0,
     0, 0);
 node = extent_tree_ad_nsearch(chunks_ad, &key);

 if (node != ((void*)0) && extent_node_addr_get(node) ==
     extent_node_addr_get(&key) && extent_node_committed_get(node) ==
     committed && !chunk_hooks->merge(chunk, size,
     extent_node_addr_get(node), extent_node_size_get(node), 0,
     arena->ind)) {





  extent_tree_szad_remove(chunks_szad, node);
  arena_chunk_cache_maybe_remove(arena, node, cache);
  extent_node_addr_set(node, chunk);
  extent_node_size_set(node, size + extent_node_size_get(node));
  extent_node_zeroed_set(node, extent_node_zeroed_get(node) &&
      !unzeroed);
  extent_tree_szad_insert(chunks_szad, node);
  arena_chunk_cache_maybe_insert(arena, node, cache);
 } else {

  node = arena_node_alloc(arena);
  if (node == ((void*)0)) {






   if (cache) {
    chunk_purge_wrapper(arena, chunk_hooks, chunk,
        size, 0, size);
   }
   goto label_return;
  }
  extent_node_init(node, arena, chunk, size, !unzeroed,
      committed);
  extent_tree_ad_insert(chunks_ad, node);
  extent_tree_szad_insert(chunks_szad, node);
  arena_chunk_cache_maybe_insert(arena, node, cache);
 }


 prev = extent_tree_ad_prev(chunks_ad, node);
 if (prev != ((void*)0) && (void *)((uintptr_t)extent_node_addr_get(prev) +
     extent_node_size_get(prev)) == chunk &&
     extent_node_committed_get(prev) == committed &&
     !chunk_hooks->merge(extent_node_addr_get(prev),
     extent_node_size_get(prev), chunk, size, 0, arena->ind)) {





  extent_tree_szad_remove(chunks_szad, prev);
  extent_tree_ad_remove(chunks_ad, prev);
  arena_chunk_cache_maybe_remove(arena, prev, cache);
  extent_tree_szad_remove(chunks_szad, node);
  arena_chunk_cache_maybe_remove(arena, node, cache);
  extent_node_addr_set(node, extent_node_addr_get(prev));
  extent_node_size_set(node, extent_node_size_get(prev) +
      extent_node_size_get(node));
  extent_node_zeroed_set(node, extent_node_zeroed_get(prev) &&
      extent_node_zeroed_get(node));
  extent_tree_szad_insert(chunks_szad, node);
  arena_chunk_cache_maybe_insert(arena, node, cache);

  arena_node_dalloc(arena, prev);
 }

label_return:
 malloc_mutex_unlock(&arena->chunks_mtx);
}
