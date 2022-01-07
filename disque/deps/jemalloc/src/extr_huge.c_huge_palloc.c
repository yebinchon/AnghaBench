
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int tsd_t ;
typedef int tcache_t ;
typedef int extent_node_t ;
struct TYPE_9__ {int huge_mtx; int huge; } ;
typedef TYPE_1__ arena_t ;


 int CACHELINE ;
 int CACHELINE_CEILING (int) ;
 TYPE_1__* arena_choose (int *,TYPE_1__*) ;
 void* arena_chunk_alloc_huge (TYPE_1__*,size_t,size_t,int*) ;
 int arena_chunk_dalloc_huge (TYPE_1__*,void*,size_t) ;
 int assert (int) ;
 size_t chunksize ;
 scalar_t__ config_fill ;
 int extent_node_init (int *,TYPE_1__*,void*,size_t,int,int) ;
 scalar_t__ huge_node_set (void*,int *) ;
 int idalloctm (int *,int *,int *,int) ;
 int * ipallocztm (int *,int ,int ,int,int *,int,TYPE_1__*) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int memset (void*,int,size_t) ;
 int opt_junk_alloc ;
 int opt_zero ;
 int ql_elm_new (int *,int ) ;
 int ql_link ;
 int ql_tail_insert (int *,int *,int ) ;
 size_t sa2u (size_t,size_t) ;
 scalar_t__ unlikely (int) ;

void *
huge_palloc(tsd_t *tsd, arena_t *arena, size_t size, size_t alignment,
    bool zero, tcache_t *tcache)
{
 void *ret;
 size_t usize;
 extent_node_t *node;
 bool is_zeroed;



 usize = sa2u(size, alignment);
 if (unlikely(usize == 0))
  return (((void*)0));
 assert(usize >= chunksize);


 node = ipallocztm(tsd, CACHELINE_CEILING(sizeof(extent_node_t)),
     CACHELINE, 0, tcache, 1, arena);
 if (node == ((void*)0))
  return (((void*)0));





 is_zeroed = zero;
 arena = arena_choose(tsd, arena);
 if (unlikely(arena == ((void*)0)) || (ret = arena_chunk_alloc_huge(arena,
     size, alignment, &is_zeroed)) == ((void*)0)) {
  idalloctm(tsd, node, tcache, 1);
  return (((void*)0));
 }

 extent_node_init(node, arena, ret, size, is_zeroed, 1);

 if (huge_node_set(ret, node)) {
  arena_chunk_dalloc_huge(arena, ret, size);
  idalloctm(tsd, node, tcache, 1);
  return (((void*)0));
 }


 malloc_mutex_lock(&arena->huge_mtx);
 ql_elm_new(node, ql_link);
 ql_tail_insert(&arena->huge, node, ql_link);
 malloc_mutex_unlock(&arena->huge_mtx);

 if (zero || (config_fill && unlikely(opt_zero))) {
  if (!is_zeroed)
   memset(ret, 0, size);
 } else if (config_fill && unlikely(opt_junk_alloc))
  memset(ret, 0xa5, size);

 return (ret);
}
