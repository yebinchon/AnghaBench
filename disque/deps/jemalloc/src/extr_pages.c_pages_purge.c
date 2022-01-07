
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JEMALLOC_MADV_PURGE ;
 int JEMALLOC_MADV_ZEROS ;
 int MEM_RESET ;
 int PAGE_READWRITE ;
 int VirtualAlloc (void*,size_t,int ,int ) ;
 int madvise (void*,size_t,int ) ;

bool
pages_purge(void *addr, size_t size)
{
 bool unzeroed;
 unzeroed = 1;

 return (unzeroed);
}
