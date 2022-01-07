
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 int chunk_deregister (void const*,int const*) ;

__attribute__((used)) static void
huge_node_unset(const void *ptr, const extent_node_t *node)
{

 chunk_deregister(ptr, node);
}
