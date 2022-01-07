
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 size_t CACHELINE_CEILING (size_t) ;
 int JEMALLOC_VALGRIND_MAKE_MEM_DEFINED (void*,size_t) ;
 scalar_t__ PAGE_CEILING (uintptr_t) ;
 size_t base_allocated ;
 int base_avail_szad ;
 int * base_chunk_alloc (size_t) ;
 int base_mtx ;
 int base_node_dalloc (int *) ;
 int base_resident ;
 scalar_t__ config_stats ;
 void* extent_node_addr_get (int *) ;
 int extent_node_addr_set (int *,void*) ;
 int extent_node_init (int *,int *,int *,size_t,int,int) ;
 size_t extent_node_size_get (int *) ;
 int extent_node_size_set (int *,size_t) ;
 int extent_tree_szad_insert (int *,int *) ;
 int * extent_tree_szad_nsearch (int *,int *) ;
 int extent_tree_szad_remove (int *,int *) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 size_t s2u (size_t) ;

void *
base_alloc(size_t size)
{
 void *ret;
 size_t csize, usize;
 extent_node_t *node;
 extent_node_t key;





 csize = CACHELINE_CEILING(size);

 usize = s2u(csize);
 extent_node_init(&key, ((void*)0), ((void*)0), usize, 0, 0);
 malloc_mutex_lock(&base_mtx);
 node = extent_tree_szad_nsearch(&base_avail_szad, &key);
 if (node != ((void*)0)) {

  extent_tree_szad_remove(&base_avail_szad, node);
 } else {

  node = base_chunk_alloc(csize);
 }
 if (node == ((void*)0)) {
  ret = ((void*)0);
  goto label_return;
 }

 ret = extent_node_addr_get(node);
 if (extent_node_size_get(node) > csize) {
  extent_node_addr_set(node, (void *)((uintptr_t)ret + csize));
  extent_node_size_set(node, extent_node_size_get(node) - csize);
  extent_tree_szad_insert(&base_avail_szad, node);
 } else
  base_node_dalloc(node);
 if (config_stats) {
  base_allocated += csize;




  base_resident += PAGE_CEILING((uintptr_t)ret + csize) -
      PAGE_CEILING((uintptr_t)ret);
 }
 JEMALLOC_VALGRIND_MAKE_MEM_DEFINED(ret, csize);
label_return:
 malloc_mutex_unlock(&base_mtx);
 return (ret);
}
