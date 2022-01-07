
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chunk_dalloc_mmap (void*,size_t) ;
 int chunk_in_dss (void*) ;
 int have_dss ;

__attribute__((used)) static bool
chunk_dalloc_default(void *chunk, size_t size, bool committed,
    unsigned arena_ind)
{

 if (!have_dss || !chunk_in_dss(chunk))
  return (chunk_dalloc_mmap(chunk, size));
 return (1);
}
