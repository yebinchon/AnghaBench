
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_2__ {scalar_t__ shardId; scalar_t__ listIndex; } ;
typedef TYPE_1__ InsertValues ;
typedef scalar_t__ Index ;



__attribute__((used)) static int
CompareInsertValuesByShardId(const void *leftElement, const void *rightElement)
{
 InsertValues *leftValue = *((InsertValues **) leftElement);
 InsertValues *rightValue = *((InsertValues **) rightElement);
 int64 leftShardId = leftValue->shardId;
 int64 rightShardId = rightValue->shardId;
 Index leftIndex = leftValue->listIndex;
 Index rightIndex = rightValue->listIndex;

 if (leftShardId > rightShardId)
 {
  return 1;
 }
 else if (leftShardId < rightShardId)
 {
  return -1;
 }
 else
 {

  if (leftIndex > rightIndex)
  {
   return 1;
  }
  else if (leftIndex < rightIndex)
  {
   return -1;
  }
  else
  {
   return 0;
  }
 }
}
