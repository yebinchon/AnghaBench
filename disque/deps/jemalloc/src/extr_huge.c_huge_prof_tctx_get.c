
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
 int * extent_node_prof_tctx_get (int *) ;
 int * huge_node_get (void const*) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

prof_tctx_t *
huge_prof_tctx_get(const void *ptr)
{
 prof_tctx_t *tctx;
 extent_node_t *node;
 arena_t *arena;

 node = huge_node_get(ptr);
 arena = extent_node_arena_get(node);
 malloc_mutex_lock(&arena->huge_mtx);
 tctx = extent_node_prof_tctx_get(node);
 malloc_mutex_unlock(&arena->huge_mtx);

 return (tctx);
}
