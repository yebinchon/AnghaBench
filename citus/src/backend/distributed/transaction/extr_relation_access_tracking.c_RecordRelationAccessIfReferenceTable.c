
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShardPlacementAccessType ;
typedef int Oid ;


 scalar_t__ DISTRIBUTE_BY_NONE ;
 scalar_t__ PartitionMethod (int ) ;
 int RecordRelationAccessBase (int ,int ) ;
 int ShouldRecordRelationAccess () ;

void
RecordRelationAccessIfReferenceTable(Oid relationId, ShardPlacementAccessType accessType)
{
 if (!ShouldRecordRelationAccess())
 {
  return;
 }
 if (PartitionMethod(relationId) != DISTRIBUTE_BY_NONE)
 {
  return;
 }

 RecordRelationAccessBase(relationId, accessType);
}
