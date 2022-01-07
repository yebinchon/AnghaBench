
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int distShardShardidIndexId; } ;
typedef int Oid ;


 int CachedRelationLookup (char*,int *) ;
 TYPE_1__ MetadataCache ;

Oid
DistShardShardidIndexId(void)
{
 CachedRelationLookup("pg_dist_shard_shardid_index",
       &MetadataCache.distShardShardidIndexId);

 return MetadataCache.distShardShardidIndexId;
}
