
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maxValueExists; scalar_t__ minValueExists; int maxValue; int minValue; } ;
typedef TYPE_1__ ShardInterval ;
typedef int FmgrInfo ;
typedef int Datum ;


 int CompareCall2 (int *,int ,int ) ;
 int DatumGetInt32 (int ) ;

__attribute__((used)) static bool
ShardIntervalsEqual(FmgrInfo *comparisonFunction, ShardInterval *firstInterval,
     ShardInterval *secondInterval)
{
 bool shardIntervalsEqual = 0;
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
  Datum minDatum = CompareCall2(comparisonFunction, firstMin, secondMin);
  Datum maxDatum = CompareCall2(comparisonFunction, firstMax, secondMax);
  int firstComparison = DatumGetInt32(minDatum);
  int secondComparison = DatumGetInt32(maxDatum);

  if (firstComparison == 0 && secondComparison == 0)
  {
   shardIntervalsEqual = 1;
  }
 }

 return shardIntervalsEqual;
}
