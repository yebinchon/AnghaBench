
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_28__ {scalar_t__ partitionMethod; } ;
struct TYPE_27__ {int hasOverlappingShardInterval; TYPE_3__** sortedShardIntervalArray; } ;
struct TYPE_26__ {scalar_t__ lessEqualConsts; scalar_t__ lessConsts; scalar_t__ greaterEqualConsts; scalar_t__ greaterConsts; TYPE_2__* hashedEqualConsts; TYPE_1__* equalConsts; scalar_t__ evaluatesToFalse; } ;
struct TYPE_25__ {scalar_t__ shardId; } ;
struct TYPE_24__ {int constvalue; } ;
struct TYPE_23__ {int constvalue; } ;
typedef TYPE_3__ ShardInterval ;
typedef TYPE_4__ PruningInstance ;
typedef int List ;
typedef TYPE_5__ DistTableCacheEntry ;
typedef TYPE_6__ ClauseWalkerContext ;


 int Assert (int) ;
 scalar_t__ DISTRIBUTE_BY_HASH ;
 int * ExhaustivePrune (TYPE_5__*,TYPE_6__*,TYPE_4__*) ;
 scalar_t__ ExhaustivePruneOne (TYPE_3__*,TYPE_6__*,TYPE_4__*) ;
 TYPE_3__* FindShardInterval (int ,TYPE_5__*) ;
 int FindShardIntervalIndex (int ,TYPE_5__*) ;
 int INVALID_SHARD_INDEX ;
 int * NIL ;
 int * PruneWithBoundaries (TYPE_5__*,TYPE_6__*,TYPE_4__*) ;
 int * list_make1 (TYPE_3__*) ;

__attribute__((used)) static List *
PruneOne(DistTableCacheEntry *cacheEntry, ClauseWalkerContext *context,
   PruningInstance *prune)
{
 ShardInterval *shardInterval = ((void*)0);


 if (prune->evaluatesToFalse)
 {
  return NIL;
 }







 if (prune->equalConsts &&
  !cacheEntry->hasOverlappingShardInterval)
 {
  shardInterval = FindShardInterval(prune->equalConsts->constvalue, cacheEntry);





  if (!shardInterval)
  {
   return NIL;
  }
 }






 if (prune->hashedEqualConsts)
 {
  int shardIndex = INVALID_SHARD_INDEX;
  ShardInterval **sortedShardIntervalArray = cacheEntry->sortedShardIntervalArray;

  Assert(context->partitionMethod == DISTRIBUTE_BY_HASH);

  shardIndex = FindShardIntervalIndex(prune->hashedEqualConsts->constvalue,
           cacheEntry);

  if (shardIndex == INVALID_SHARD_INDEX)
  {
   return NIL;
  }
  else if (shardInterval &&
     sortedShardIntervalArray[shardIndex]->shardId != shardInterval->shardId)
  {






   return NIL;
  }
  else
  {
   return list_make1(sortedShardIntervalArray[shardIndex]);
  }
 }
 if (shardInterval)
 {
  if (context->partitionMethod != DISTRIBUTE_BY_HASH &&
   ExhaustivePruneOne(shardInterval, context, prune))
  {
   return NIL;
  }
  else
  {

   return list_make1(shardInterval);
  }
 }





 Assert(context->partitionMethod != DISTRIBUTE_BY_HASH);
 if (!cacheEntry->hasOverlappingShardInterval && (
   prune->greaterConsts || prune->greaterEqualConsts ||
   prune->lessConsts || prune->lessEqualConsts))
 {
  return PruneWithBoundaries(cacheEntry, context, prune);
 }




 return ExhaustivePrune(cacheEntry, context, prune);
}
