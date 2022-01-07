
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxValue; int minValue; } ;
typedef TYPE_1__ ShardInterval ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int Assert (int) ;
 int INVALID_SHARD_INDEX ;
 int PerformCompare (int ) ;
 int fcSetArg (int ,int,int ) ;

__attribute__((used)) static int
LowerShardBoundary(Datum partitionColumnValue, ShardInterval **shardIntervalCache,
       int shardCount, FunctionCallInfo compareFunction, bool includeMax)
{
 int lowerBoundIndex = 0;
 int upperBoundIndex = shardCount;

 Assert(shardCount != 0);


 fcSetArg(compareFunction, 0, partitionColumnValue);

 while (lowerBoundIndex < upperBoundIndex)
 {
  int middleIndex = lowerBoundIndex + ((upperBoundIndex - lowerBoundIndex) / 2);
  int maxValueComparison = 0;
  int minValueComparison = 0;


  fcSetArg(compareFunction, 1, shardIntervalCache[middleIndex]->minValue);


  minValueComparison = PerformCompare(compareFunction);


  if (minValueComparison < 0)
  {

   upperBoundIndex = middleIndex;
   continue;
  }


  fcSetArg(compareFunction, 1, shardIntervalCache[middleIndex]->maxValue);


  maxValueComparison = PerformCompare(compareFunction);

  if ((maxValueComparison == 0 && !includeMax) ||
   maxValueComparison > 0)
  {

   lowerBoundIndex = middleIndex + 1;
   continue;
  }


  return middleIndex;
 }

 Assert(lowerBoundIndex == upperBoundIndex);







 if (lowerBoundIndex == 0)
 {

  return 0;
 }
 else if (lowerBoundIndex == shardCount)
 {

  return INVALID_SHARD_INDEX;
 }


 return lowerBoundIndex + 1;
}
