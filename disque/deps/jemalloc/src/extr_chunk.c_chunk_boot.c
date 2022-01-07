
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int dwPageSize; scalar_t__ dwAllocationGranularity; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int GetSystemInfo (TYPE_1__*) ;
 int LG_CHUNK_DEFAULT ;
 unsigned int LG_PAGE ;
 int LG_SIZEOF_PTR ;
 int PAGE ;
 int ZU (int) ;
 int assert (int) ;
 scalar_t__ chunk_dss_boot () ;
 int chunk_npages ;
 int chunks_rtree ;
 int chunks_rtree_node_alloc ;
 int chunksize ;
 int chunksize_mask ;
 scalar_t__ have_dss ;
 int jemalloc_ffs (int) ;
 int opt_lg_chunk ;
 scalar_t__ rtree_new (int *,int,int ,int *) ;

bool
chunk_boot(void)
{
 if (!opt_lg_chunk)
  opt_lg_chunk = LG_CHUNK_DEFAULT;



 chunksize = (ZU(1) << opt_lg_chunk);
 assert(chunksize >= PAGE);
 chunksize_mask = chunksize - 1;
 chunk_npages = (chunksize >> LG_PAGE);

 if (have_dss && chunk_dss_boot())
  return (1);
 if (rtree_new(&chunks_rtree, (ZU(1) << (LG_SIZEOF_PTR+3)) -
     opt_lg_chunk, chunks_rtree_node_alloc, ((void*)0)))
  return (1);

 return (0);
}
