
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxValue; int minValue; } ;
typedef TYPE_1__ ShardInterval ;
typedef int FmgrInfo ;
typedef int Datum ;


 int DEFAULT_COLLATION_OID ;
 scalar_t__ DatumGetInt32 (int) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int INVALID_SHARD_INDEX ;

int
SearchCachedShardInterval(Datum partitionColumnValue, ShardInterval **shardIntervalCache,
        int shardCount, FmgrInfo *compareFunction)
{
 int lowerBoundIndex = 0;
 int upperBoundIndex = shardCount;

 while (lowerBoundIndex < upperBoundIndex)
 {
  int middleIndex = (lowerBoundIndex + upperBoundIndex) / 2;
  int maxValueComparison = 0;
  int minValueComparison = 0;

  minValueComparison = FunctionCall2Coll(compareFunction,
              DEFAULT_COLLATION_OID,
              partitionColumnValue,
              shardIntervalCache[middleIndex]->minValue);

  if (DatumGetInt32(minValueComparison) < 0)
  {
   upperBoundIndex = middleIndex;
   continue;
  }

  maxValueComparison = FunctionCall2Coll(compareFunction,
              DEFAULT_COLLATION_OID,
              partitionColumnValue,
              shardIntervalCache[middleIndex]->maxValue);

  if (DatumGetInt32(maxValueComparison) <= 0)
  {
   return middleIndex;
  }

  lowerBoundIndex = middleIndex + 1;
 }

 return INVALID_SHARD_INDEX;
}
