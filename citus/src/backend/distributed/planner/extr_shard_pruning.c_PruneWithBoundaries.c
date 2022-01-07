
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {int compareIntervalFunctionCall; } ;
struct TYPE_16__ {int shardIntervalArrayLength; int ** sortedShardIntervalArray; } ;
struct TYPE_15__ {TYPE_4__* lessConsts; TYPE_3__* lessEqualConsts; TYPE_2__* greaterConsts; TYPE_1__* greaterEqualConsts; } ;
struct TYPE_14__ {int constvalue; } ;
struct TYPE_13__ {int constvalue; } ;
struct TYPE_12__ {int constvalue; } ;
struct TYPE_11__ {int constvalue; } ;
typedef int ShardInterval ;
typedef TYPE_5__ PruningInstance ;
typedef int List ;
typedef int FunctionCallInfo ;
typedef TYPE_6__ DistTableCacheEntry ;
typedef int Datum ;
typedef TYPE_7__ ClauseWalkerContext ;


 int Assert (int) ;
 int INVALID_SHARD_INDEX ;
 int LowerShardBoundary (int ,int **,int,int ,int) ;
 int * NIL ;
 scalar_t__ PerformValueCompare (int ,int ,int ) ;
 int UpperShardBoundary (int ,int **,int,int ,int) ;
 int * lappend (int *,int *) ;

__attribute__((used)) static List *
PruneWithBoundaries(DistTableCacheEntry *cacheEntry, ClauseWalkerContext *context,
     PruningInstance *prune)
{
 List *remainingShardList = NIL;
 int shardCount = cacheEntry->shardIntervalArrayLength;
 ShardInterval **sortedShardIntervalArray = cacheEntry->sortedShardIntervalArray;
 bool hasLowerBound = 0;
 bool hasUpperBound = 0;
 Datum lowerBound = 0;
 Datum upperBound = 0;
 bool lowerBoundInclusive = 0;
 bool upperBoundInclusive = 0;
 int lowerBoundIdx = -1;
 int upperBoundIdx = -1;
 int curIdx = 0;
 FunctionCallInfo compareFunctionCall = (FunctionCallInfo) &
             context->compareIntervalFunctionCall;

 if (prune->greaterEqualConsts)
 {
  lowerBound = prune->greaterEqualConsts->constvalue;
  lowerBoundInclusive = 1;
  hasLowerBound = 1;
 }
 if (prune->greaterConsts)
 {




  if (!hasLowerBound ||
   PerformValueCompare(compareFunctionCall,
        prune->greaterConsts->constvalue,
        lowerBound) >= 0)
  {
   lowerBound = prune->greaterConsts->constvalue;
   lowerBoundInclusive = 0;
   hasLowerBound = 1;
  }
 }
 if (prune->lessEqualConsts)
 {
  upperBound = prune->lessEqualConsts->constvalue;
  upperBoundInclusive = 1;
  hasUpperBound = 1;
 }
 if (prune->lessConsts)
 {




  if (!hasUpperBound ||
   PerformValueCompare(compareFunctionCall,
        prune->lessConsts->constvalue,
        upperBound) <= 0)
  {
   upperBound = prune->lessConsts->constvalue;
   upperBoundInclusive = 0;
   hasUpperBound = 1;
  }
 }

 Assert(hasLowerBound || hasUpperBound);


 if (hasLowerBound)
 {
  lowerBoundIdx = LowerShardBoundary(lowerBound, sortedShardIntervalArray,
             shardCount, compareFunctionCall,
             lowerBoundInclusive);
 }
 else
 {
  lowerBoundIdx = 0;
 }


 if (hasUpperBound)
 {
  upperBoundIdx = UpperShardBoundary(upperBound, sortedShardIntervalArray,
             shardCount, compareFunctionCall,
             upperBoundInclusive);
 }
 else
 {
  upperBoundIdx = shardCount - 1;
 }

 if (lowerBoundIdx == INVALID_SHARD_INDEX)
 {
  return NIL;
 }
 else if (upperBoundIdx == INVALID_SHARD_INDEX)
 {
  return NIL;
 }




 for (curIdx = lowerBoundIdx; curIdx <= upperBoundIdx; curIdx++)
 {
  remainingShardList = lappend(remainingShardList,
          sortedShardIntervalArray[curIdx]);
 }

 return remainingShardList;
}
