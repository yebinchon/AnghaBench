
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShardPlacementAccessType ;
typedef int Oid ;


 int Assert (int) ;
 int CheckConflictingRelationAccesses (int ,int ) ;
 int PartitionTable (int ) ;
 int PartitionedTable (int ) ;
 int RecordPlacementAccessToCache (int ,int ) ;

__attribute__((used)) static void
RecordRelationAccessBase(Oid relationId, ShardPlacementAccessType accessType)
{




 Assert(!PartitionedTable(relationId) && !PartitionTable(relationId));


 CheckConflictingRelationAccesses(relationId, accessType);


 RecordPlacementAccessToCache(relationId, accessType);
}
