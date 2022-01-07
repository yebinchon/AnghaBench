
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int relationId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef int LOCKMODE ;


 int ColocatedShardIdInRelation (int ,int) ;
 TYPE_1__* LoadShardInterval (int ) ;
 int LockShardResource (int ,int ) ;
 int PartitionParentOid (int ) ;
 scalar_t__ PartitionTable (int ) ;
 int ShardIndex (TYPE_1__*) ;

void
LockParentShardResourceIfPartition(uint64 shardId, LOCKMODE lockMode)
{
 ShardInterval *shardInterval = LoadShardInterval(shardId);
 Oid relationId = shardInterval->relationId;

 if (PartitionTable(relationId))
 {
  int shardIndex = ShardIndex(shardInterval);
  Oid parentRelationId = PartitionParentOid(relationId);
  uint64 parentShardId = ColocatedShardIdInRelation(parentRelationId, shardIndex);

  LockShardResource(parentShardId, lockMode);
 }
}
