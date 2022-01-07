
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* levels; } ;
typedef TYPE_2__ rtree_t ;
typedef int rtree_node_elm_t ;
struct TYPE_5__ {int subtree; } ;


 int * rtree_node_init (TYPE_2__*,unsigned int,int *) ;

rtree_node_elm_t *
rtree_subtree_read_hard(rtree_t *rtree, unsigned level)
{

 return (rtree_node_init(rtree, level, &rtree->levels[level].subtree));
}
