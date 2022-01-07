
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtree_t ;
struct TYPE_5__ {int child; } ;
typedef TYPE_1__ rtree_node_elm_t ;


 TYPE_1__* rtree_node_init (int *,unsigned int,int *) ;

rtree_node_elm_t *
rtree_child_read_hard(rtree_t *rtree, rtree_node_elm_t *elm, unsigned level)
{

 return (rtree_node_init(rtree, level, &elm->child));
}
