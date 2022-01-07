
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtree_node_elm_t ;


 scalar_t__ calloc (size_t,int) ;

__attribute__((used)) static rtree_node_elm_t *
node_alloc(size_t nelms)
{

 return ((rtree_node_elm_t *)calloc(nelms, sizeof(rtree_node_elm_t)));
}
