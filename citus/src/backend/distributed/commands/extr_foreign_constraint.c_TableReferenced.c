
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ contype; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_confrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_FOREIGN ;
 int ConstraintRelationId ;
 int F_OIDEQ ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int NoLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
TableReferenced(Oid relationId)
{
 Relation pgConstraint = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 Oid scanIndexId = InvalidOid;
 bool useIndex = 0;

 pgConstraint = heap_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_constraint_confrelid, BTEqualStrategyNumber, F_OIDEQ,
    relationId);
 scanDescriptor = systable_beginscan(pgConstraint, scanIndexId, useIndex, ((void*)0),
          scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  Form_pg_constraint constraintForm = (Form_pg_constraint) GETSTRUCT(heapTuple);

  if (constraintForm->contype == CONSTRAINT_FOREIGN)
  {
   systable_endscan(scanDescriptor);
   heap_close(pgConstraint, NoLock);

   return 1;
  }

  heapTuple = systable_getnext(scanDescriptor);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgConstraint, NoLock);

 return 0;
}
