
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * shardIntervalCompareFunction; } ;
struct TYPE_6__ {scalar_t__ maxValueExists; scalar_t__ minValueExists; int maxValue; int minValue; int relationId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int FmgrInfo ;
typedef TYPE_2__ DistTableCacheEntry ;
typedef int Datum ;


 int CompareCall2 (int *,int ,int ) ;
 int DatumGetInt32 (int ) ;
 TYPE_2__* DistributedTableCacheEntry (int ) ;

bool
ShardIntervalsOverlap(ShardInterval *firstInterval, ShardInterval *secondInterval)
{
 bool nonOverlap = 0;
 DistTableCacheEntry *intervalRelation =
  DistributedTableCacheEntry(firstInterval->relationId);
 FmgrInfo *comparisonFunction = intervalRelation->shardIntervalCompareFunction;

 Datum firstMin = 0;
 Datum firstMax = 0;
 Datum secondMin = 0;
 Datum secondMax = 0;


 firstMin = firstInterval->minValue;
 firstMax = firstInterval->maxValue;
 secondMin = secondInterval->minValue;
 secondMax = secondInterval->maxValue;







 if (firstInterval->minValueExists && firstInterval->maxValueExists &&
  secondInterval->minValueExists && secondInterval->maxValueExists)
 {
  Datum firstDatum = CompareCall2(comparisonFunction, firstMax, secondMin);
  Datum secondDatum = CompareCall2(comparisonFunction, secondMax, firstMin);
  int firstComparison = DatumGetInt32(firstDatum);
  int secondComparison = DatumGetInt32(secondDatum);

  if (firstComparison < 0 || secondComparison < 0)
  {
   nonOverlap = 1;
  }
 }

 return (!nonOverlap);
}
