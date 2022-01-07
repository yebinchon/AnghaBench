
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 int JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED (int *,int) ;
 int * base_nodes ;

__attribute__((used)) static void
base_node_dalloc(extent_node_t *node)
{

 JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(node, sizeof(extent_node_t));
 *(extent_node_t **)node = base_nodes;
 base_nodes = node;
}
