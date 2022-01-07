
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 int assert (int) ;
 int * chunk_lookup (void const*,int) ;
 int extent_node_achunk_get (int *) ;

__attribute__((used)) static extent_node_t *
huge_node_get(const void *ptr)
{
 extent_node_t *node;

 node = chunk_lookup(ptr, 1);
 assert(!extent_node_achunk_get(node));

 return (node);
}
