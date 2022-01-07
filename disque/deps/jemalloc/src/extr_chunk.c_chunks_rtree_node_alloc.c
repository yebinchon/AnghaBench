
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtree_node_elm_t ;


 scalar_t__ base_alloc (size_t) ;

__attribute__((used)) static rtree_node_elm_t *
chunks_rtree_node_alloc(size_t nelms)
{

 return ((rtree_node_elm_t *)base_alloc(nelms *
     sizeof(rtree_node_elm_t)));
}
