
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_size_t ;
typedef int vm_allocation_site_t ;
typedef int uint64_t ;


 int FALSE ;
 int M_LAST ;
 int M_NOWAIT ;
 int M_NULL ;
 int M_ZERO ;
 int TRUE ;
 int bzero (void*,size_t) ;
 scalar_t__ kalloc_canblock (size_t*,int ,int *) ;
 int panic (char*,...) ;

void *
__MALLOC(
 size_t size,
 int type,
 int flags,
 vm_allocation_site_t *site)
{
 void *addr = ((void*)0);
 vm_size_t msize = size;

 if (type >= M_LAST)
  panic("_malloc TYPE");

 if (size == 0)
  return (((void*)0));

 if (msize != size) {
  panic("Requested size to __MALLOC is too large (%llx)!\n", (uint64_t)size);
 }

 if (flags & M_NOWAIT) {
  addr = (void *)kalloc_canblock(&msize, FALSE, site);
 } else {
  addr = (void *)kalloc_canblock(&msize, TRUE, site);
  if (addr == ((void*)0)) {
   if (flags & M_NULL) {
    return ((void*)0);
   }
   panic("_MALLOC: kalloc returned NULL (potential leak), size %llu", (uint64_t) size);
  }
 }
 if (!addr)
  return (0);

 if (flags & M_ZERO)
  bzero(addr, size);

 return (addr);
}
