
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelationAccessMode ;
typedef int Oid ;


 int GetRelationAccessMode (int ,int ) ;
 int PLACEMENT_ACCESS_DML ;

RelationAccessMode
GetRelationDMLAccessMode(Oid relationId)
{
 return GetRelationAccessMode(relationId, PLACEMENT_ACCESS_DML);
}
