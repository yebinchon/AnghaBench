
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int CanUseExclusiveConnections (scalar_t__,int) ;
 int CreateColocatedShards (scalar_t__,scalar_t__,int) ;
 int CreateShardsWithRoundRobinPolicy (scalar_t__,int ,int ,int) ;
 scalar_t__ InvalidOid ;
 scalar_t__ RegularTable (scalar_t__) ;
 int ShardCount ;
 int ShardReplicationFactor ;

__attribute__((used)) static void
CreateHashDistributedTableShards(Oid relationId, Oid colocatedTableId,
         bool localTableEmpty)
{
 bool useExclusiveConnection = 0;







 if (RegularTable(relationId))
 {
  useExclusiveConnection = CanUseExclusiveConnections(relationId,
               localTableEmpty);
 }

 if (colocatedTableId != InvalidOid)
 {
  CreateColocatedShards(relationId, colocatedTableId, useExclusiveConnection);
 }
 else
 {






  CreateShardsWithRoundRobinPolicy(relationId, ShardCount, ShardReplicationFactor,
           useExclusiveConnection);
 }
}
