
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t ALIGNMENT_CEILING (uintptr_t,size_t) ;
 size_t PAGE ;
 int assert (int ) ;
 int pages_decommit (void*,size_t) ;
 void* pages_map (int *,size_t) ;
 void* pages_trim (void*,size_t,size_t,size_t) ;

__attribute__((used)) static void *
chunk_alloc_mmap_slow(size_t size, size_t alignment, bool *zero, bool *commit)
{
 void *ret;
 size_t alloc_size;

 alloc_size = size + alignment - PAGE;

 if (alloc_size < size)
  return (((void*)0));
 do {
  void *pages;
  size_t leadsize;
  pages = pages_map(((void*)0), alloc_size);
  if (pages == ((void*)0))
   return (((void*)0));
  leadsize = ALIGNMENT_CEILING((uintptr_t)pages, alignment) -
      (uintptr_t)pages;
  ret = pages_trim(pages, alloc_size, leadsize, size);
 } while (ret == ((void*)0));

 assert(ret != ((void*)0));
 *zero = 1;
 if (!*commit)
  *commit = pages_decommit(ret, size);
 return (ret);
}
