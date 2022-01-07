
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGNMENT_ADDR2OFFSET (void*,size_t) ;
 int assert (int) ;
 void* chunk_alloc_mmap_slow (size_t,size_t,int*,int*) ;
 size_t chunksize_mask ;
 int pages_decommit (void*,size_t) ;
 void* pages_map (int *,size_t) ;
 int pages_unmap (void*,size_t) ;

void *
chunk_alloc_mmap(size_t size, size_t alignment, bool *zero, bool *commit)
{
 void *ret;
 size_t offset;
 assert(alignment != 0);
 assert((alignment & chunksize_mask) == 0);

 ret = pages_map(((void*)0), size);
 if (ret == ((void*)0))
  return (((void*)0));
 offset = ALIGNMENT_ADDR2OFFSET(ret, alignment);
 if (offset != 0) {
  pages_unmap(ret, size);
  return (chunk_alloc_mmap_slow(size, alignment, zero, commit));
 }

 assert(ret != ((void*)0));
 *zero = 1;
 if (!*commit)
  *commit = pages_decommit(ret, size);
 return (ret);
}
