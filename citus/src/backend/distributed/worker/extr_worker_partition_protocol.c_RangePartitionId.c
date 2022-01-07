
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_2__ {int splitPointCount; int * splitPointArray; int * comparisonFunction; } ;
typedef TYPE_1__ RangePartitionContext ;
typedef int FmgrInfo ;
typedef int Datum ;


 int CompareCall2 (int *,int ,int ) ;
 int DatumGetInt32 (int ) ;

__attribute__((used)) static uint32
RangePartitionId(Datum partitionValue, const void *context)
{
 RangePartitionContext *rangePartitionContext = (RangePartitionContext *) context;
 FmgrInfo *comparisonFunction = rangePartitionContext->comparisonFunction;
 Datum *pointArray = rangePartitionContext->splitPointArray;
 int32 currentLength = rangePartitionContext->splitPointCount;
 int32 halfLength = 0;
 uint32 firstIndex = 0;
 while (currentLength > 0)
 {
  uint32 middleIndex = 0;
  Datum middlePoint = 0;
  Datum comparisonDatum = 0;
  int comparisonResult = 0;

  halfLength = currentLength >> 1;
  middleIndex = firstIndex;
  middleIndex += halfLength;

  middlePoint = pointArray[middleIndex];

  comparisonDatum = CompareCall2(comparisonFunction, partitionValue, middlePoint);
  comparisonResult = DatumGetInt32(comparisonDatum);


  if (comparisonResult < 0)
  {
   currentLength = halfLength;
  }
  else
  {
   firstIndex = middleIndex;
   firstIndex++;
   currentLength = currentLength - halfLength - 1;
  }
 }

 return firstIndex;
}
