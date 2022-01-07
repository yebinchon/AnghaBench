
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
struct TYPE_8__ {scalar_t__ contype; TYPE_1__ conname; int conparentid; } ;
struct TYPE_7__ {int addCatalog; void* schemas; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_2__ OverrideSearchPath ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_3__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_FOREIGN ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int CurrentMemoryContext ;
 int F_OIDEQ ;
 int GETSTRUCT (int *) ;
 TYPE_2__* GetOverrideSearchPath (int ) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 void* NIL ;
 int OidIsValid (int ) ;
 int PopOverrideSearchPath () ;
 int PushOverrideSearchPath (TYPE_2__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int get_relation_constraint_oid (int ,int ,int) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * lappend (int *,char*) ;
 char* pg_get_constraintdef_command (int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

List *
GetTableForeignConstraintCommands(Oid relationId)
{
 List *tableForeignConstraints = NIL;

 Relation pgConstraint = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 HeapTuple heapTuple = ((void*)0);






 OverrideSearchPath *overridePath = GetOverrideSearchPath(CurrentMemoryContext);
 overridePath->schemas = NIL;
 overridePath->addCatalog = 1;
 PushOverrideSearchPath(overridePath);


 pgConstraint = heap_open(ConstraintRelationId, AccessShareLock);
 ScanKeyInit(&scanKey[0], Anum_pg_constraint_conrelid, BTEqualStrategyNumber, F_OIDEQ,
    relationId);
 scanDescriptor = systable_beginscan(pgConstraint, ConstraintRelidTypidNameIndexId,
          1, ((void*)0),
          scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  Form_pg_constraint constraintForm = (Form_pg_constraint) GETSTRUCT(heapTuple);

  bool inheritedConstraint = OidIsValid(constraintForm->conparentid);

  if (!inheritedConstraint && constraintForm->contype == CONSTRAINT_FOREIGN)
  {
   Oid constraintId = get_relation_constraint_oid(relationId,
                 constraintForm->conname.data,
                 1);
   char *statementDef = pg_get_constraintdef_command(constraintId);

   tableForeignConstraints = lappend(tableForeignConstraints, statementDef);
  }

  heapTuple = systable_getnext(scanDescriptor);
 }


 systable_endscan(scanDescriptor);
 heap_close(pgConstraint, AccessShareLock);


 PopOverrideSearchPath();

 return tableForeignConstraints;
}
