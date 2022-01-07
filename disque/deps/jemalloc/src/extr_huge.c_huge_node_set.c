
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 int assert (int) ;
 int chunk_register (void const*,int *) ;
 int extent_node_achunk_get (int *) ;
 void const* extent_node_addr_get (int *) ;

__attribute__((used)) static bool
huge_node_set(const void *ptr, extent_node_t *node)
{

 assert(extent_node_addr_get(node) == ptr);
 assert(!extent_node_achunk_get(node));
 return (chunk_register(ptr, node));
}
