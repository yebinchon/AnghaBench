
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int distObjectRelationId; } ;
typedef int Oid ;


 int CachedRelationNamespaceLookup (char*,int ,int *) ;
 int CitusCatalogNamespaceId () ;
 TYPE_1__ MetadataCache ;

Oid
DistObjectRelationId(void)
{
 CachedRelationNamespaceLookup("pg_dist_object", CitusCatalogNamespaceId(),
          &MetadataCache.distObjectRelationId);

 return MetadataCache.distObjectRelationId;
}
