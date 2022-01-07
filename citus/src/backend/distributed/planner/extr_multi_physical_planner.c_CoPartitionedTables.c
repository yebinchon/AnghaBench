
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_3__ {scalar_t__ shardIntervalArrayLength; scalar_t__ colocationId; scalar_t__ partitionMethod; int * shardIntervalCompareFunction; int ** sortedShardIntervalArray; } ;
typedef int ShardInterval ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef TYPE_1__ DistTableCacheEntry ;


 int Assert (int ) ;
 int CoPlacedShardIntervals (int *,int *) ;
 scalar_t__ DISTRIBUTE_BY_HASH ;
 TYPE_1__* DistributedTableCacheEntry (int ) ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int ShardIntervalsEqual (int *,int *,int *) ;

bool
CoPartitionedTables(Oid firstRelationId, Oid secondRelationId)
{
 bool coPartitionedTables = 1;
 uint32 intervalIndex = 0;
 DistTableCacheEntry *firstTableCache = DistributedTableCacheEntry(firstRelationId);
 DistTableCacheEntry *secondTableCache = DistributedTableCacheEntry(secondRelationId);
 ShardInterval **sortedFirstIntervalArray = firstTableCache->sortedShardIntervalArray;
 ShardInterval **sortedSecondIntervalArray =
  secondTableCache->sortedShardIntervalArray;
 uint32 firstListShardCount = firstTableCache->shardIntervalArrayLength;
 uint32 secondListShardCount = secondTableCache->shardIntervalArrayLength;
 FmgrInfo *comparisonFunction = firstTableCache->shardIntervalCompareFunction;

 if (firstListShardCount != secondListShardCount)
 {
  return 0;
 }


 if (firstListShardCount == 0)
 {
  return 1;
 }

 Assert(comparisonFunction != ((void*)0));





 if (firstTableCache->colocationId != INVALID_COLOCATION_ID &&
  firstTableCache->colocationId == secondTableCache->colocationId)
 {
  return 1;
 }
 if (firstTableCache->partitionMethod == DISTRIBUTE_BY_HASH ||
  secondTableCache->partitionMethod == DISTRIBUTE_BY_HASH)
 {
  return 0;
 }
 for (intervalIndex = 0; intervalIndex < firstListShardCount; intervalIndex++)
 {
  ShardInterval *firstInterval = sortedFirstIntervalArray[intervalIndex];
  ShardInterval *secondInterval = sortedSecondIntervalArray[intervalIndex];

  bool shardIntervalsEqual = ShardIntervalsEqual(comparisonFunction,
                firstInterval,
                secondInterval);
  if (!shardIntervalsEqual || !CoPlacedShardIntervals(firstInterval,
               secondInterval))
  {
   coPartitionedTables = 0;
   break;
  }
 }

 return coPartitionedTables;
}
