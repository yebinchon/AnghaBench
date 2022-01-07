
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ partitionMethod; scalar_t__ replicationModel; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 scalar_t__ DISTRIBUTE_BY_HASH ;
 scalar_t__ DISTRIBUTE_BY_NONE ;
 TYPE_1__* DistributedTableCacheEntry (int ) ;
 scalar_t__ REPLICATION_MODEL_STREAMING ;

bool
ShouldSyncTableMetadata(Oid relationId)
{
 DistTableCacheEntry *tableEntry = DistributedTableCacheEntry(relationId);

 bool hashDistributed = (tableEntry->partitionMethod == DISTRIBUTE_BY_HASH);
 bool streamingReplicated =
  (tableEntry->replicationModel == REPLICATION_MODEL_STREAMING);

 bool mxTable = (streamingReplicated && hashDistributed);
 bool referenceTable = (tableEntry->partitionMethod == DISTRIBUTE_BY_NONE);

 if (mxTable || referenceTable)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}
