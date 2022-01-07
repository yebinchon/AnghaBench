
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int relationId; } ;
typedef TYPE_1__ ShardInterval ;


 int ShardsIntervalsEqual (TYPE_1__*,TYPE_1__*) ;
 int TablesColocated (int ,int ) ;

bool
ShardsColocated(ShardInterval *leftShardInterval, ShardInterval *rightShardInterval)
{
 bool tablesColocated = TablesColocated(leftShardInterval->relationId,
             rightShardInterval->relationId);

 if (tablesColocated)
 {
  bool shardIntervalEqual = ShardsIntervalsEqual(leftShardInterval,
                rightShardInterval);
  return shardIntervalEqual;
 }

 return 0;
}
