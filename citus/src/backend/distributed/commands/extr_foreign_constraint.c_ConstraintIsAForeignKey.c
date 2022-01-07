
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
struct TYPE_4__ {scalar_t__ conrelid; TYPE_1__ conname; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_contype ;
 int BTEqualStrategyNumber ;
 int CONSTRAINT_FOREIGN ;
 int CharGetDatum (int ) ;
 int ConstraintRelationId ;
 int F_CHAREQ ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int NAMEDATALEN ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
ConstraintIsAForeignKey(char *constraintNameInput, Oid relationId)
{
 Relation pgConstraint = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 HeapTuple heapTuple = ((void*)0);

 pgConstraint = heap_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_constraint_contype, BTEqualStrategyNumber, F_CHAREQ,
    CharGetDatum(CONSTRAINT_FOREIGN));
 scanDescriptor = systable_beginscan(pgConstraint, InvalidOid, 0,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  Form_pg_constraint constraintForm = (Form_pg_constraint) GETSTRUCT(heapTuple);
  char *constraintName = (constraintForm->conname).data;

  if (strncmp(constraintName, constraintNameInput, NAMEDATALEN) == 0 &&
   constraintForm->conrelid == relationId)
  {
   systable_endscan(scanDescriptor);
   heap_close(pgConstraint, AccessShareLock);

   return 1;
  }

  heapTuple = systable_getnext(scanDescriptor);
 }


 systable_endscan(scanDescriptor);
 heap_close(pgConstraint, AccessShareLock);

 return 0;
}
