
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int Oid ;
typedef int List ;


 int * ColocationGroupTableList (scalar_t__) ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int * NIL ;
 scalar_t__ TableColocationId (int ) ;
 int * lappend_oid (int *,int ) ;

List *
ColocatedTableList(Oid distributedTableId)
{
 uint32 tableColocationId = TableColocationId(distributedTableId);
 List *colocatedTableList = NIL;





 if (tableColocationId == INVALID_COLOCATION_ID)
 {
  colocatedTableList = lappend_oid(colocatedTableList, distributedTableId);
  return colocatedTableList;
 }

 colocatedTableList = ColocationGroupTableList(tableColocationId);

 return colocatedTableList;
}
