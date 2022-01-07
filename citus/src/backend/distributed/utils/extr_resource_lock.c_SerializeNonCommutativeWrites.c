
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_2__ {int shardId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int List ;
typedef int LOCKMODE ;


 scalar_t__ ClusterHasKnownMetadataWorkers () ;
 int IsFirstWorkerNode () ;
 int LockReferencedReferenceShardResources (int ,int ) ;
 int LockShardListResources (int *,int ) ;
 int LockShardListResourcesOnFirstWorker (int ,int *) ;
 scalar_t__ ReferenceTableShardId (int ) ;
 scalar_t__ linitial (int *) ;

void
SerializeNonCommutativeWrites(List *shardIntervalList, LOCKMODE lockMode)
{
 ShardInterval *firstShardInterval = (ShardInterval *) linitial(shardIntervalList);
 int64 firstShardId = firstShardInterval->shardId;

 if (ReferenceTableShardId(firstShardId))
 {
  if (ClusterHasKnownMetadataWorkers() && !IsFirstWorkerNode())
  {
   LockShardListResourcesOnFirstWorker(lockMode, shardIntervalList);
  }





  LockReferencedReferenceShardResources(firstShardId, lockMode);
 }


 LockShardListResources(shardIntervalList, lockMode);
}
