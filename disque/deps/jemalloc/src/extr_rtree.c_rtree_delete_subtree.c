
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int height; int (* dalloc ) (TYPE_3__*) ;TYPE_1__* levels; } ;
typedef TYPE_2__ rtree_t ;
struct TYPE_9__ {struct TYPE_9__* child; } ;
typedef TYPE_3__ rtree_node_elm_t ;
struct TYPE_7__ {size_t bits; } ;


 size_t ZU (int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void
rtree_delete_subtree(rtree_t *rtree, rtree_node_elm_t *node, unsigned level)
{

 if (level + 1 < rtree->height) {
  size_t nchildren, i;

  nchildren = ZU(1) << rtree->levels[level].bits;
  for (i = 0; i < nchildren; i++) {
   rtree_node_elm_t *child = node[i].child;
   if (child != ((void*)0))
    rtree_delete_subtree(rtree, child, level + 1);
  }
 }
 rtree->dalloc(node);
}
