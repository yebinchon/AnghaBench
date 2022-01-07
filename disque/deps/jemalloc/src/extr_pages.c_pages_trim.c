
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 void* pages_map (void*,size_t) ;
 int pages_unmap (void*,size_t) ;

void *
pages_trim(void *addr, size_t alloc_size, size_t leadsize, size_t size)
{
 void *ret = (void *)((uintptr_t)addr + leadsize);

 assert(alloc_size >= leadsize + size);
 {
  size_t trailsize = alloc_size - leadsize - size;

  if (leadsize != 0)
   pages_unmap(addr, leadsize);
  if (trailsize != 0)
   pages_unmap((void *)((uintptr_t)ret + size), trailsize);
  return (ret);
 }

}
