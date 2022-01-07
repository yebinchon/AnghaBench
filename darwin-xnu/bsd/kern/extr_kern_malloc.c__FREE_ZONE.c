
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmzones {scalar_t__ kz_zalloczone; size_t kz_elemsize; } ;


 scalar_t__ KMZ_MALLOC ;
 int M_LAST ;
 int kfree (void*,size_t) ;
 struct kmzones* kmzones ;
 int panic (char*) ;
 int zfree (scalar_t__,void*) ;

void
_FREE_ZONE(
 void *elem,
 size_t size,
 int type)
{
 struct kmzones *kmz;

 if (type >= M_LAST)
  panic("FREE_SIZE");

 kmz = &kmzones[type];
 if (kmz->kz_zalloczone == KMZ_MALLOC)
  panic("free_zone ZONE");


 if (kmz->kz_elemsize == (size_t)(-1))
  panic("FREE_SIZE XXX");

 if (size == kmz->kz_elemsize)
  zfree(kmz->kz_zalloczone, elem);
 else
  kfree(elem, size);
}
