
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* levels; int * (* alloc ) (int) ;} ;
typedef TYPE_2__ rtree_t ;
typedef int rtree_node_elm_t ;
struct TYPE_4__ {int bits; } ;


 int CPU_SPINWAIT ;
 int * RTREE_NODE_INITIALIZING ;
 int ZU (int) ;
 scalar_t__ atomic_cas_p (void**,int *,int *) ;
 int * atomic_read_p (void**) ;
 int atomic_write_p (void**,int *) ;
 int * stub1 (int) ;

__attribute__((used)) static rtree_node_elm_t *
rtree_node_init(rtree_t *rtree, unsigned level, rtree_node_elm_t **elmp)
{
 rtree_node_elm_t *node;

 if (atomic_cas_p((void **)elmp, ((void*)0), RTREE_NODE_INITIALIZING)) {




  do {
   CPU_SPINWAIT;
   node = atomic_read_p((void **)elmp);
  } while (node == RTREE_NODE_INITIALIZING);
 } else {
  node = rtree->alloc(ZU(1) << rtree->levels[level].bits);
  if (node == ((void*)0))
   return (((void*)0));
  atomic_write_p((void **)elmp, node);
 }

 return (node);
}
