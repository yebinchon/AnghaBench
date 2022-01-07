
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 int assert (int) ;
 size_t atomic_add_z (int *,size_t) ;
 scalar_t__ atomic_cas_z (int *,size_t,size_t) ;
 size_t atomic_read_z (int *) ;
 int chunks_rtree ;
 size_t chunksize ;
 scalar_t__ config_prof ;
 int curchunks ;
 void const* extent_node_addr_get (int const*) ;
 size_t extent_node_size_get (int const*) ;
 int highchunks ;
 scalar_t__ opt_prof ;
 int prof_gdump () ;
 scalar_t__ prof_gdump_get_unlocked () ;
 scalar_t__ rtree_set (int *,uintptr_t,int const*) ;

bool
chunk_register(const void *chunk, const extent_node_t *node)
{

 assert(extent_node_addr_get(node) == chunk);

 if (rtree_set(&chunks_rtree, (uintptr_t)chunk, node))
  return (1);
 if (config_prof && opt_prof) {
  size_t size = extent_node_size_get(node);
  size_t nadd = (size == 0) ? 1 : size / chunksize;
  size_t cur = atomic_add_z(&curchunks, nadd);
  size_t high = atomic_read_z(&highchunks);
  while (cur > high && atomic_cas_z(&highchunks, high, cur)) {




   high = atomic_read_z(&highchunks);
  }
  if (cur > high && prof_gdump_get_unlocked())
   prof_gdump();
 }

 return (0);
}
