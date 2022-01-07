
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef int int32 ;
struct TYPE_3__ {int maxValue; int minValue; } ;
typedef TYPE_1__ ShardInterval ;


 int DatumGetInt32 (int ) ;
 int HASH_TOKEN_COUNT ;
 int INT32_MAX ;
 int INT32_MIN ;

bool
HasUniformHashDistribution(ShardInterval **shardIntervalArray,
         int shardIntervalArrayLength)
{
 uint64 hashTokenIncrement = 0;
 int shardIndex = 0;


 if (shardIntervalArrayLength == 0)
 {
  return 0;
 }


 hashTokenIncrement = HASH_TOKEN_COUNT / shardIntervalArrayLength;

 for (shardIndex = 0; shardIndex < shardIntervalArrayLength; shardIndex++)
 {
  ShardInterval *shardInterval = shardIntervalArray[shardIndex];
  int32 shardMinHashToken = INT32_MIN + (shardIndex * hashTokenIncrement);
  int32 shardMaxHashToken = shardMinHashToken + (hashTokenIncrement - 1);

  if (shardIndex == (shardIntervalArrayLength - 1))
  {
   shardMaxHashToken = INT32_MAX;
  }

  if (DatumGetInt32(shardInterval->minValue) != shardMinHashToken ||
   DatumGetInt32(shardInterval->maxValue) != shardMaxHashToken)
  {
   return 0;
  }
 }

 return 1;
}
