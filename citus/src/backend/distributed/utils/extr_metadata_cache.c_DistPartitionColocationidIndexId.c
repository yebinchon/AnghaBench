
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int distPartitionColocationidIndexId; } ;
typedef int Oid ;


 int CachedRelationLookup (char*,int *) ;
 TYPE_1__ MetadataCache ;

Oid
DistPartitionColocationidIndexId(void)
{
 CachedRelationLookup("pg_dist_partition_colocationid_index",
       &MetadataCache.distPartitionColocationidIndexId);

 return MetadataCache.distPartitionColocationidIndexId;
}
