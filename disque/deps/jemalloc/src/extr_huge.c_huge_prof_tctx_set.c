
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int prof_tctx_t ;
typedef int extent_node_t ;
struct TYPE_3__ {int huge_mtx; } ;
typedef TYPE_1__ arena_t ;


 TYPE_1__* extent_node_arena_get (int *) ;
 int extent_node_prof_tctx_set (int *,int *) ;
 int * huge_node_get (void const*) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

void
huge_prof_tctx_set(const void *ptr, prof_tctx_t *tctx)
{
 extent_node_t *node;
 arena_t *arena;

 node = huge_node_get(ptr);
 arena = extent_node_arena_get(node);
 malloc_mutex_lock(&arena->huge_mtx);
 extent_node_prof_tctx_set(node, tctx);
 malloc_mutex_unlock(&arena->huge_mtx);
}
