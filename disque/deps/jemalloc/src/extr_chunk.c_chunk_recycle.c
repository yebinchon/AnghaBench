
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ret ;
typedef int extent_tree_t ;
typedef int extent_node_t ;
struct TYPE_15__ {scalar_t__ (* commit ) (void*,size_t,int ,size_t,int ) ;scalar_t__ (* split ) (void*,size_t,size_t,size_t,int,int ) ;} ;
typedef TYPE_1__ chunk_hooks_t ;
struct TYPE_16__ {int chunks_mtx; int ind; } ;
typedef TYPE_2__ arena_t ;


 uintptr_t ALIGNMENT_CEILING (uintptr_t,size_t) ;
 size_t CHUNK_CEILING (int ) ;
 int JEMALLOC_VALGRIND_MAKE_MEM_DEFINED (void*,size_t) ;
 int arena_chunk_cache_maybe_insert (TYPE_2__*,int *,int) ;
 int arena_chunk_cache_maybe_remove (TYPE_2__*,int *,int) ;
 int * arena_node_alloc (TYPE_2__*) ;
 int arena_node_dalloc (TYPE_2__*,int *) ;
 int assert (int) ;
 int * chunk_first_best_fit (TYPE_2__*,int *,int *,size_t) ;
 int chunk_hooks_assure_initialized_locked (TYPE_2__*,TYPE_1__*) ;
 int chunk_record (TYPE_2__*,TYPE_1__*,int *,int *,int,void*,size_t,int,int) ;
 size_t chunksize ;
 scalar_t__ config_debug ;
 void* extent_node_addr_get (int *) ;
 int extent_node_committed_get (int *) ;
 int extent_node_init (int *,TYPE_2__*,void*,size_t,int,int) ;
 size_t extent_node_size_get (int *) ;
 int extent_node_size_set (int *,size_t) ;
 int extent_node_zeroed_get (int *) ;
 int extent_tree_ad_insert (int *,int *) ;
 int extent_tree_ad_remove (int *,int *) ;
 int * extent_tree_ad_search (int *,int *) ;
 int extent_tree_szad_insert (int *,int *) ;
 int extent_tree_szad_remove (int *,int *) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int memset (void*,int ,size_t) ;
 int s2u (size_t) ;
 scalar_t__ stub1 (void*,size_t,size_t,size_t,int,int ) ;
 scalar_t__ stub2 (void*,size_t,size_t,size_t,int,int ) ;
 scalar_t__ stub3 (void*,size_t,int ,size_t,int ) ;

__attribute__((used)) static void *
chunk_recycle(arena_t *arena, chunk_hooks_t *chunk_hooks,
    extent_tree_t *chunks_szad, extent_tree_t *chunks_ad, bool cache,
    void *new_addr, size_t size, size_t alignment, bool *zero, bool *commit,
    bool dalloc_node)
{
 void *ret;
 extent_node_t *node;
 size_t alloc_size, leadsize, trailsize;
 bool zeroed, committed;

 assert(new_addr == ((void*)0) || alignment == chunksize);





 assert(dalloc_node || new_addr != ((void*)0));

 alloc_size = CHUNK_CEILING(s2u(size + alignment - chunksize));

 if (alloc_size < size)
  return (((void*)0));
 malloc_mutex_lock(&arena->chunks_mtx);
 chunk_hooks_assure_initialized_locked(arena, chunk_hooks);
 if (new_addr != ((void*)0)) {
  extent_node_t key;
  extent_node_init(&key, arena, new_addr, alloc_size, 0,
      0);
  node = extent_tree_ad_search(chunks_ad, &key);
 } else {
  node = chunk_first_best_fit(arena, chunks_szad, chunks_ad,
      alloc_size);
 }
 if (node == ((void*)0) || (new_addr != ((void*)0) && extent_node_size_get(node) <
     size)) {
  malloc_mutex_unlock(&arena->chunks_mtx);
  return (((void*)0));
 }
 leadsize = ALIGNMENT_CEILING((uintptr_t)extent_node_addr_get(node),
     alignment) - (uintptr_t)extent_node_addr_get(node);
 assert(new_addr == ((void*)0) || leadsize == 0);
 assert(extent_node_size_get(node) >= leadsize + size);
 trailsize = extent_node_size_get(node) - leadsize - size;
 ret = (void *)((uintptr_t)extent_node_addr_get(node) + leadsize);
 zeroed = extent_node_zeroed_get(node);
 if (zeroed)
  *zero = 1;
 committed = extent_node_committed_get(node);
 if (committed)
  *commit = 1;

 if (leadsize != 0 &&
     chunk_hooks->split(extent_node_addr_get(node),
     extent_node_size_get(node), leadsize, size, 0, arena->ind)) {
  malloc_mutex_unlock(&arena->chunks_mtx);
  return (((void*)0));
 }

 extent_tree_szad_remove(chunks_szad, node);
 extent_tree_ad_remove(chunks_ad, node);
 arena_chunk_cache_maybe_remove(arena, node, cache);
 if (leadsize != 0) {

  extent_node_size_set(node, leadsize);
  extent_tree_szad_insert(chunks_szad, node);
  extent_tree_ad_insert(chunks_ad, node);
  arena_chunk_cache_maybe_insert(arena, node, cache);
  node = ((void*)0);
 }
 if (trailsize != 0) {

  if (chunk_hooks->split(ret, size + trailsize, size,
      trailsize, 0, arena->ind)) {
   if (dalloc_node && node != ((void*)0))
    arena_node_dalloc(arena, node);
   malloc_mutex_unlock(&arena->chunks_mtx);
   chunk_record(arena, chunk_hooks, chunks_szad, chunks_ad,
       cache, ret, size + trailsize, zeroed, committed);
   return (((void*)0));
  }

  if (node == ((void*)0)) {
   node = arena_node_alloc(arena);
   if (node == ((void*)0)) {
    malloc_mutex_unlock(&arena->chunks_mtx);
    chunk_record(arena, chunk_hooks, chunks_szad,
        chunks_ad, cache, ret, size + trailsize,
        zeroed, committed);
    return (((void*)0));
   }
  }
  extent_node_init(node, arena, (void *)((uintptr_t)(ret) + size),
      trailsize, zeroed, committed);
  extent_tree_szad_insert(chunks_szad, node);
  extent_tree_ad_insert(chunks_ad, node);
  arena_chunk_cache_maybe_insert(arena, node, cache);
  node = ((void*)0);
 }
 if (!committed && chunk_hooks->commit(ret, size, 0, size, arena->ind)) {
  malloc_mutex_unlock(&arena->chunks_mtx);
  chunk_record(arena, chunk_hooks, chunks_szad, chunks_ad, cache,
      ret, size, zeroed, committed);
  return (((void*)0));
 }
 malloc_mutex_unlock(&arena->chunks_mtx);

 assert(dalloc_node || node != ((void*)0));
 if (dalloc_node && node != ((void*)0))
  arena_node_dalloc(arena, node);
 if (*zero) {
  if (!zeroed)
   memset(ret, 0, size);
  else if (config_debug) {
   size_t i;
   size_t *p = (size_t *)(uintptr_t)ret;

   JEMALLOC_VALGRIND_MAKE_MEM_DEFINED(ret, size);
   for (i = 0; i < size / sizeof(size_t); i++)
    assert(p[i] == 0);
  }
 }
 return (ret);
}
