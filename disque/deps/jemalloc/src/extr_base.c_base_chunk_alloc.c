
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 size_t CACHELINE_CEILING (int) ;
 size_t CHUNK_CEILING (size_t) ;
 scalar_t__ PAGE_CEILING (size_t) ;
 int assert (int) ;
 size_t base_allocated ;
 size_t base_mapped ;
 int base_node_dalloc (int *) ;
 int * base_node_try_alloc () ;
 int base_resident ;
 void* chunk_alloc_base (size_t) ;
 scalar_t__ config_stats ;
 int extent_node_init (int *,int *,void*,size_t,int,int) ;

__attribute__((used)) static extent_node_t *
base_chunk_alloc(size_t minsize)
{
 extent_node_t *node;
 size_t csize, nsize;
 void *addr;

 assert(minsize != 0);
 node = base_node_try_alloc();

 nsize = (node == ((void*)0)) ? CACHELINE_CEILING(sizeof(extent_node_t)) : 0;
 csize = CHUNK_CEILING(minsize + nsize);
 addr = chunk_alloc_base(csize);
 if (addr == ((void*)0)) {
  if (node != ((void*)0))
   base_node_dalloc(node);
  return (((void*)0));
 }
 base_mapped += csize;
 if (node == ((void*)0)) {
  node = (extent_node_t *)addr;
  addr = (void *)((uintptr_t)addr + nsize);
  csize -= nsize;
  if (config_stats) {
   base_allocated += nsize;
   base_resident += PAGE_CEILING(nsize);
  }
 }
 extent_node_init(node, ((void*)0), addr, csize, 1, 1);
 return (node);
}
