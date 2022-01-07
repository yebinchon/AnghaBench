
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minValue; int maxValue; scalar_t__ maxValueExists; scalar_t__ minValueExists; } ;
typedef TYPE_1__ ShardInterval ;
typedef int FmgrInfo ;
typedef int Datum ;


 int Assert (int) ;
 int CompareCall2 (int *,int ,int ) ;
 int DatumGetInt32 (int ) ;

__attribute__((used)) static bool
HasOverlappingShardInterval(ShardInterval **shardIntervalArray,
       int shardIntervalArrayLength,
       FmgrInfo *shardIntervalSortCompareFunction)
{
 int shardIndex = 0;
 ShardInterval *lastShardInterval = ((void*)0);
 Datum comparisonDatum = 0;
 int comparisonResult = 0;


 if (shardIntervalArrayLength < 2)
 {
  return 0;
 }

 lastShardInterval = shardIntervalArray[0];
 for (shardIndex = 1; shardIndex < shardIntervalArrayLength; shardIndex++)
 {
  ShardInterval *curShardInterval = shardIntervalArray[shardIndex];


  Assert(lastShardInterval->minValueExists && lastShardInterval->maxValueExists);
  Assert(curShardInterval->minValueExists && curShardInterval->maxValueExists);

  comparisonDatum = CompareCall2(shardIntervalSortCompareFunction,
            lastShardInterval->maxValue,
            curShardInterval->minValue);
  comparisonResult = DatumGetInt32(comparisonDatum);

  if (comparisonResult >= 0)
  {
   return 1;
  }

  lastShardInterval = curShardInterval;
 }

 return 0;
}
