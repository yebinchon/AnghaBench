
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ config_munmap ;
 int pages_unmap (void*,size_t) ;

bool
chunk_dalloc_mmap(void *chunk, size_t size)
{

 if (config_munmap)
  pages_unmap(chunk, size);

 return (!config_munmap);
}
