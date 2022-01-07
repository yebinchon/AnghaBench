
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_size_t ;
typedef int vm_allocation_site_t ;
struct kmzones {scalar_t__ kz_zalloczone; size_t kz_elemsize; } ;


 int FALSE ;
 scalar_t__ KMZ_MALLOC ;
 int M_LAST ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TRUE ;
 int bzero (void*,size_t) ;
 scalar_t__ kalloc_canblock (size_t*,int ,int *) ;
 struct kmzones* kmzones ;
 int panic (char*,...) ;
 scalar_t__ zalloc (scalar_t__) ;
 scalar_t__ zalloc_noblock (scalar_t__) ;

void *
__MALLOC_ZONE(
 size_t size,
 int type,
 int flags,
 vm_allocation_site_t *site)
{
 struct kmzones *kmz;
 void *elem;

 if (type >= M_LAST)
  panic("_malloc_zone TYPE");

 kmz = &kmzones[type];
 if (kmz->kz_zalloczone == KMZ_MALLOC)
  panic("_malloc_zone ZONE: type = %d", type);


 if (kmz->kz_elemsize == (size_t)(-1))
  panic("_malloc_zone XXX");

 if (size == kmz->kz_elemsize)
  if (flags & M_NOWAIT) {
     elem = (void *)zalloc_noblock(kmz->kz_zalloczone);
  } else {
     elem = (void *)zalloc(kmz->kz_zalloczone);
  }
 else {
  vm_size_t kalloc_size = size;
  if (size > kalloc_size) {
   elem = ((void*)0);
  } else if (flags & M_NOWAIT) {
   elem = (void *)kalloc_canblock(&kalloc_size, FALSE, site);
  } else {
   elem = (void *)kalloc_canblock(&kalloc_size, TRUE, site);
  }
 }

 if (elem && (flags & M_ZERO))
  bzero(elem, size);

 return (elem);
}
