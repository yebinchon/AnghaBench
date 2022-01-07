
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int minValue; int maxValueExists; int minValueExists; } ;
typedef TYPE_1__ ShardInterval ;
typedef int FmgrInfo ;
typedef int Datum ;


 int Assert (int ) ;
 int CompareCall2 (int *,int ,int ) ;
 int CompareShardIntervalsById (void const*,void const*) ;
 int DatumGetInt32 (int ) ;

int
CompareShardIntervals(const void *leftElement, const void *rightElement,
       FmgrInfo *typeCompareFunction)
{
 ShardInterval *leftShardInterval = *((ShardInterval **) leftElement);
 ShardInterval *rightShardInterval = *((ShardInterval **) rightElement);
 int comparisonResult = 0;
 bool leftHasNull = (!leftShardInterval->minValueExists ||
      !leftShardInterval->maxValueExists);
 bool rightHasNull = (!rightShardInterval->minValueExists ||
       !rightShardInterval->maxValueExists);

 Assert(typeCompareFunction != ((void*)0));

 if (leftHasNull && rightHasNull)
 {
  comparisonResult = 0;
 }
 else if (leftHasNull)
 {
  comparisonResult = 1;
 }
 else if (rightHasNull)
 {
  comparisonResult = -1;
 }
 else
 {

  Datum leftDatum = leftShardInterval->minValue;
  Datum rightDatum = rightShardInterval->minValue;
  Datum comparisonDatum = CompareCall2(typeCompareFunction, leftDatum, rightDatum);
  comparisonResult = DatumGetInt32(comparisonDatum);
 }


 if (comparisonResult == 0)
 {
  return CompareShardIntervalsById(leftElement, rightElement);
 }

 return comparisonResult;
}
