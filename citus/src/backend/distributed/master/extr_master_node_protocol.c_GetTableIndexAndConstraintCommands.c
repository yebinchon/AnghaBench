
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ indexrelid; scalar_t__ indisclustered; scalar_t__ indisexclusion; scalar_t__ indisunique; scalar_t__ indisprimary; } ;
struct TYPE_5__ {int addCatalog; void* schemas; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__ OverrideSearchPath ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_index ;


 int AccessShareLock ;
 int Anum_pg_index_indrelid ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int F_OIDEQ ;
 int GETSTRUCT (int *) ;
 TYPE_1__* GetOverrideSearchPath (int ) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int IndexIndrelidIndexId ;
 int IndexRelationId ;
 scalar_t__ InvalidOid ;
 void* NIL ;
 int OidIsValid (scalar_t__) ;
 int PopOverrideSearchPath () ;
 int PushOverrideSearchPath (TYPE_1__*) ;
 int ScanKeyInit (int *,int ,int ,int ,scalar_t__) ;
 scalar_t__ get_index_constraint (scalar_t__) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * lappend (int *,char*) ;
 char* pg_get_constraintdef_command (scalar_t__) ;
 char* pg_get_indexclusterdef_string (scalar_t__) ;
 char* pg_get_indexdef_string (scalar_t__) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

List *
GetTableIndexAndConstraintCommands(Oid relationId)
{
 List *indexDDLEventList = NIL;
 Relation pgIndex = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 HeapTuple heapTuple = ((void*)0);






 OverrideSearchPath *overridePath = GetOverrideSearchPath(CurrentMemoryContext);
 overridePath->schemas = NIL;
 overridePath->addCatalog = 1;
 PushOverrideSearchPath(overridePath);


 pgIndex = heap_open(IndexRelationId, AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_index_indrelid,
    BTEqualStrategyNumber, F_OIDEQ, relationId);

 scanDescriptor = systable_beginscan(pgIndex,
          IndexIndrelidIndexId, 1,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  Form_pg_index indexForm = (Form_pg_index) GETSTRUCT(heapTuple);
  Oid indexId = indexForm->indexrelid;
  bool isConstraint = 0;
  char *statementDef = ((void*)0);







  if (indexForm->indisprimary)
  {
   isConstraint = 1;
  }
  else if (indexForm->indisunique || indexForm->indisexclusion)
  {
   Oid constraintId = get_index_constraint(indexId);
   isConstraint = OidIsValid(constraintId);
  }
  else
  {
   isConstraint = 0;
  }


  if (isConstraint)
  {
   Oid constraintId = get_index_constraint(indexId);
   Assert(constraintId != InvalidOid);

   statementDef = pg_get_constraintdef_command(constraintId);
  }
  else
  {
   statementDef = pg_get_indexdef_string(indexId);
  }


  indexDDLEventList = lappend(indexDDLEventList, statementDef);


  if (indexForm->indisclustered)
  {
   char *clusteredDef = pg_get_indexclusterdef_string(indexId);
   Assert(clusteredDef != ((void*)0));

   indexDDLEventList = lappend(indexDDLEventList, clusteredDef);
  }

  heapTuple = systable_getnext(scanDescriptor);
 }


 systable_endscan(scanDescriptor);
 heap_close(pgIndex, AccessShareLock);


 PopOverrideSearchPath();

 return indexDDLEventList;
}
