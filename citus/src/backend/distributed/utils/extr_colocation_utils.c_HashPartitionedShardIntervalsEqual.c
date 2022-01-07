
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_4__ {int maxValue; int minValue; } ;
typedef TYPE_1__ ShardInterval ;


 scalar_t__ DatumGetInt32 (int ) ;

__attribute__((used)) static bool
HashPartitionedShardIntervalsEqual(ShardInterval *leftShardInterval,
           ShardInterval *rightShardInterval)
{
 int32 leftShardMinValue = DatumGetInt32(leftShardInterval->minValue);
 int32 leftShardMaxValue = DatumGetInt32(leftShardInterval->maxValue);
 int32 rightShardMinValue = DatumGetInt32(rightShardInterval->minValue);
 int32 rightShardMaxValue = DatumGetInt32(rightShardInterval->maxValue);

 bool minValuesEqual = leftShardMinValue == rightShardMinValue;
 bool maxValuesEqual = leftShardMaxValue == rightShardMaxValue;

 return minValuesEqual && maxValuesEqual;
}
