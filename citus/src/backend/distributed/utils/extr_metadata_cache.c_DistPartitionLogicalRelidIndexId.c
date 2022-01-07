
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int distPartitionLogicalRelidIndexId; } ;
typedef int Oid ;


 int CachedRelationLookup (char*,int *) ;
 TYPE_1__ MetadataCache ;

Oid
DistPartitionLogicalRelidIndexId(void)
{
 CachedRelationLookup("pg_dist_partition_logical_relid_index",
       &MetadataCache.distPartitionLogicalRelidIndexId);

 return MetadataCache.distPartitionLogicalRelidIndexId;
}
