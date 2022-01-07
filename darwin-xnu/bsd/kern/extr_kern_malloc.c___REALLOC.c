
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_allocation_site_t ;


 int MIN (size_t,size_t) ;
 int M_ZERO ;
 int _FREE (void*,int) ;
 void* __MALLOC (size_t,int,int,int *) ;
 int bcopy (void*,void*,int ) ;
 int bzero (void*,size_t) ;
 size_t kalloc_bucket_size (size_t) ;
 size_t kalloc_size (void*) ;

void *
__REALLOC(
 void *addr,
 size_t size,
 int type,
 int flags,
 vm_allocation_site_t *site)
{
 void *newaddr;
 size_t alloc;


 if (addr == ((void*)0))
  return (__MALLOC(size, type, flags, site));

 alloc = kalloc_size(addr);





 if (kalloc_bucket_size(size) == alloc) {
  if (flags & M_ZERO) {
   if (alloc < size)
    bzero(addr + alloc, (size - alloc));
   else
    bzero(addr + size, (alloc - size));
  }
  return addr;
 }


 if ((newaddr = __MALLOC(size, type, flags, site)) == ((void*)0))
  return (((void*)0));


 bcopy(addr, newaddr, MIN(size, alloc));
 _FREE(addr, type);

 return (newaddr);
}
