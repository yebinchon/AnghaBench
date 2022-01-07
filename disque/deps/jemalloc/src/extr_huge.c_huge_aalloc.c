
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arena_t ;


 int * extent_node_arena_get (int ) ;
 int huge_node_get (void const*) ;

arena_t *
huge_aalloc(const void *ptr)
{

 return (extent_node_arena_get(huge_node_get(ptr)));
}
