
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
typedef int tcache_t ;
typedef int extent_node_t ;
struct TYPE_4__ {int huge_mtx; int huge; } ;
typedef TYPE_1__ arena_t ;


 int arena_chunk_dalloc_huge (TYPE_1__*,int ,int ) ;
 int extent_node_addr_get (int *) ;
 TYPE_1__* extent_node_arena_get (int *) ;
 int extent_node_size_get (int *) ;
 int huge_dalloc_junk (int ,int ) ;
 int * huge_node_get (void*) ;
 int huge_node_unset (void*,int *) ;
 int idalloctm (int *,int *,int *,int) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int ql_link ;
 int ql_remove (int *,int *,int ) ;

void
huge_dalloc(tsd_t *tsd, void *ptr, tcache_t *tcache)
{
 extent_node_t *node;
 arena_t *arena;

 node = huge_node_get(ptr);
 arena = extent_node_arena_get(node);
 huge_node_unset(ptr, node);
 malloc_mutex_lock(&arena->huge_mtx);
 ql_remove(&arena->huge, node, ql_link);
 malloc_mutex_unlock(&arena->huge_mtx);

 huge_dalloc_junk(extent_node_addr_get(node),
     extent_node_size_get(node));
 arena_chunk_dalloc_huge(extent_node_arena_get(node),
     extent_node_addr_get(node), extent_node_size_get(node));
 idalloctm(tsd, node, tcache, 1);
}
