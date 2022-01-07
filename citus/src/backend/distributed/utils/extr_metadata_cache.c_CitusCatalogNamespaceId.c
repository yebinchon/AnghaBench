
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int citusCatalogNamespaceId; } ;
typedef int Oid ;


 int CachedNamespaceLookup (char*,int *) ;
 TYPE_1__ MetadataCache ;

Oid
CitusCatalogNamespaceId(void)
{
 CachedNamespaceLookup("citus", &MetadataCache.citusCatalogNamespaceId);
 return MetadataCache.citusCatalogNamespaceId;
}
