
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int PLACEMENT_ACCESS_DDL ;
 int RecordParallelRelationAccess (int ,int ) ;

void
RecordParallelDDLAccess(Oid relationId)
{
 RecordParallelRelationAccess(relationId, PLACEMENT_ACCESS_DDL);
}
