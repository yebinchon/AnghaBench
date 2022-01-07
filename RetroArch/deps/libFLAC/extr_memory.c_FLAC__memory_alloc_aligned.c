
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAC__ASSERT (int) ;
 void* safe_malloc_ (size_t) ;
 void* safe_malloc_add_2op_ (size_t,long) ;

void *FLAC__memory_alloc_aligned(size_t bytes, void **aligned_address)
{
 void *x;

 FLAC__ASSERT(0 != aligned_address);






 x = safe_malloc_(bytes);
 *aligned_address = x;

 return x;
}
