
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conrelid; int confrelid; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_confkey ;
 int Anum_pg_constraint_conkey ;
 int Anum_pg_constraint_contype ;
 int Assert (int ) ;
 int BTEqualStrategyNumber ;
 int CONSTRAINT_FOREIGN ;
 int CharGetDatum (int ) ;
 int ConstraintRelationId ;
 scalar_t__ DISTRIBUTE_BY_NONE ;
 int F_CHAREQ ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 scalar_t__ HeapTupleOfForeignConstraintIncludesColumn (int *,int ,int,char*) ;
 int InvalidOid ;
 int IsDistributedTable (int ) ;
 scalar_t__ PartitionMethod (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
ColumnAppearsInForeignKeyToReferenceTable(char *columnName, Oid relationId)
{
 Relation pgConstraint = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 HeapTuple heapTuple = ((void*)0);
 bool foreignKeyToReferenceTableIncludesGivenColumn = 0;

 pgConstraint = heap_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_constraint_contype, BTEqualStrategyNumber, F_CHAREQ,
    CharGetDatum(CONSTRAINT_FOREIGN));

 scanDescriptor = systable_beginscan(pgConstraint, InvalidOid, 0,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  Oid referencedTableId = InvalidOid;
  Oid referencingTableId = InvalidOid;
  int pgConstraintKey = 0;
  Form_pg_constraint constraintForm = (Form_pg_constraint) GETSTRUCT(heapTuple);

  referencedTableId = constraintForm->confrelid;
  referencingTableId = constraintForm->conrelid;

  if (referencedTableId == relationId)
  {
   pgConstraintKey = Anum_pg_constraint_confkey;
  }
  else if (referencingTableId == relationId)
  {
   pgConstraintKey = Anum_pg_constraint_conkey;
  }
  else
  {




   heapTuple = systable_getnext(scanDescriptor);
   continue;
  }





  Assert(IsDistributedTable(referencedTableId));
  if (PartitionMethod(referencedTableId) != DISTRIBUTE_BY_NONE)
  {
   heapTuple = systable_getnext(scanDescriptor);
   continue;
  }

  if (HeapTupleOfForeignConstraintIncludesColumn(heapTuple, relationId,
                pgConstraintKey, columnName))
  {
   foreignKeyToReferenceTableIncludesGivenColumn = 1;
   break;
  }

  heapTuple = systable_getnext(scanDescriptor);
 }


 systable_endscan(scanDescriptor);
 heap_close(pgConstraint, AccessShareLock);
 return foreignKeyToReferenceTableIncludesGivenColumn;
}
