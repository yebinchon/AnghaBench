
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 int JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED (int *,int) ;
 int * base_nodes ;

__attribute__((used)) static extent_node_t *
base_node_try_alloc(void)
{
 extent_node_t *node;

 if (base_nodes == ((void*)0))
  return (((void*)0));
 node = base_nodes;
 base_nodes = *(extent_node_t **)node;
 JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(node, sizeof(extent_node_t));
 return (node);
}
