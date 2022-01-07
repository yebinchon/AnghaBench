
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int distPartitionRelationId; } ;
typedef int Oid ;


 int CachedRelationLookup (char*,int *) ;
 TYPE_1__ MetadataCache ;

Oid
DistPartitionRelationId(void)
{
 CachedRelationLookup("pg_dist_partition",
       &MetadataCache.distPartitionRelationId);

 return MetadataCache.distPartitionRelationId;
}
