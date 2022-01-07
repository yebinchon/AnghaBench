
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ shardId; int relationId; } ;
typedef TYPE_1__ ShardInterval ;


 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_NONE ;
 int HashPartitionedShardIntervalsEqual (TYPE_1__*,TYPE_1__*) ;
 char PartitionMethod (int ) ;

__attribute__((used)) static bool
ShardsIntervalsEqual(ShardInterval *leftShardInterval, ShardInterval *rightShardInterval)
{
 char leftIntervalPartitionMethod = PartitionMethod(leftShardInterval->relationId);
 char rightIntervalPartitionMethod = PartitionMethod(rightShardInterval->relationId);


 if (leftShardInterval->shardId == rightShardInterval->shardId)
 {
  return 1;
 }


 leftIntervalPartitionMethod = PartitionMethod(leftShardInterval->relationId);
 rightIntervalPartitionMethod = PartitionMethod(rightShardInterval->relationId);
 if (leftIntervalPartitionMethod != rightIntervalPartitionMethod)
 {
  return 0;
 }

 if (leftIntervalPartitionMethod == DISTRIBUTE_BY_HASH)
 {
  return HashPartitionedShardIntervalsEqual(leftShardInterval, rightShardInterval);
 }
 else if (leftIntervalPartitionMethod == DISTRIBUTE_BY_NONE)
 {





  return 1;
 }


 return 0;
}
