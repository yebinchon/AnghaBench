
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ Oid ;


 scalar_t__ INVALID_COLOCATION_ID ;
 scalar_t__ TableColocationId (scalar_t__) ;

bool
TablesColocated(Oid leftDistributedTableId, Oid rightDistributedTableId)
{
 uint32 leftColocationId = INVALID_COLOCATION_ID;
 uint32 rightColocationId = INVALID_COLOCATION_ID;

 if (leftDistributedTableId == rightDistributedTableId)
 {
  return 1;
 }

 leftColocationId = TableColocationId(leftDistributedTableId);
 rightColocationId = TableColocationId(rightDistributedTableId);
 if (leftColocationId == INVALID_COLOCATION_ID ||
  rightColocationId == INVALID_COLOCATION_ID)
 {
  return 0;
 }

 return leftColocationId == rightColocationId;
}
