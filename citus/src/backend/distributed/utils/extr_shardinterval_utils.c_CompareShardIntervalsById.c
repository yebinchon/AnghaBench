
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_2__ {scalar_t__ shardId; } ;
typedef TYPE_1__ ShardInterval ;



int
CompareShardIntervalsById(const void *leftElement, const void *rightElement)
{
 ShardInterval *leftInterval = *((ShardInterval **) leftElement);
 ShardInterval *rightInterval = *((ShardInterval **) rightElement);
 int64 leftShardId = leftInterval->shardId;
 int64 rightShardId = rightInterval->shardId;


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
  return 0;
 }
}
