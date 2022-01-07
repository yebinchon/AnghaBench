
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_node_t ;


 int assert (int) ;
 size_t atomic_read_z (int *) ;
 int atomic_sub_z (int *,size_t) ;
 int chunks_rtree ;
 size_t chunksize ;
 scalar_t__ config_prof ;
 int curchunks ;
 size_t extent_node_size_get (int const*) ;
 scalar_t__ opt_prof ;
 int rtree_set (int *,uintptr_t,int *) ;

void
chunk_deregister(const void *chunk, const extent_node_t *node)
{
 bool err;

 err = rtree_set(&chunks_rtree, (uintptr_t)chunk, ((void*)0));
 assert(!err);
 if (config_prof && opt_prof) {
  size_t size = extent_node_size_get(node);
  size_t nsub = (size == 0) ? 1 : size / chunksize;
  assert(atomic_read_z(&curchunks) >= nsub);
  atomic_sub_z(&curchunks, nsub);
 }
}
