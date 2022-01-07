
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int height; TYPE_1__* levels; } ;
typedef TYPE_2__ rtree_t ;
typedef int rtree_node_elm_t ;
struct TYPE_5__ {int * subtree; } ;


 int rtree_delete_subtree (TYPE_2__*,int *,unsigned int) ;

void
rtree_delete(rtree_t *rtree)
{
 unsigned i;

 for (i = 0; i < rtree->height; i++) {
  rtree_node_elm_t *subtree = rtree->levels[i].subtree;
  if (subtree != ((void*)0))
   rtree_delete_subtree(rtree, subtree, i);
 }
}
