
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shardIntervalArrayLength; int ** sortedShardIntervalArray; } ;
typedef int ShardInterval ;
typedef int PruningInstance ;
typedef int List ;
typedef TYPE_1__ DistTableCacheEntry ;
typedef int ClauseWalkerContext ;


 int ExhaustivePruneOne (int *,int *,int *) ;
 int * NIL ;
 int * lappend (int *,int *) ;

__attribute__((used)) static List *
ExhaustivePrune(DistTableCacheEntry *cacheEntry, ClauseWalkerContext *context,
    PruningInstance *prune)
{
 List *remainingShardList = NIL;
 int shardCount = cacheEntry->shardIntervalArrayLength;
 ShardInterval **sortedShardIntervalArray = cacheEntry->sortedShardIntervalArray;
 int curIdx = 0;

 for (curIdx = 0; curIdx < shardCount; curIdx++)
 {
  ShardInterval *curInterval = sortedShardIntervalArray[curIdx];

  if (!ExhaustivePruneOne(curInterval, context, prune))
  {
   remainingShardList = lappend(remainingShardList, curInterval);
  }
 }

 return remainingShardList;
}
