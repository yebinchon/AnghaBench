
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* values; } ;
struct TYPE_4__ {int pronargs; scalar_t__ oid; TYPE_1__ proargtypes; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 scalar_t__ ANYELEMENTOID ;
 int AccessShareLock ;
 int Anum_pg_proc_proname ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int ERROR ;
 int F_NAMEEQ ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleGetOid (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 scalar_t__ InvalidOid ;
 int ProcedureNameArgsNspIndexId ;
 int ProcedureRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

__attribute__((used)) static Oid
AggregateFunctionOid(const char *functionName, Oid inputType)
{
 Oid functionOid = InvalidOid;
 Relation procRelation = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 HeapTuple heapTuple = ((void*)0);

 procRelation = heap_open(ProcedureRelationId, AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_proc_proname,
    BTEqualStrategyNumber, F_NAMEEQ, CStringGetDatum(functionName));

 scanDescriptor = systable_beginscan(procRelation,
          ProcedureNameArgsNspIndexId, 1,
          ((void*)0), scanKeyCount, scanKey);


 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  Form_pg_proc procForm = (Form_pg_proc) GETSTRUCT(heapTuple);
  int argumentCount = procForm->pronargs;

  if (argumentCount == 1)
  {

   if (procForm->proargtypes.values[0] == inputType ||
    procForm->proargtypes.values[0] == ANYELEMENTOID)
   {

    functionOid = HeapTupleGetOid(heapTuple);



    break;
   }
  }
  Assert(argumentCount <= 1);

  heapTuple = systable_getnext(scanDescriptor);
 }

 if (functionOid == InvalidOid)
 {
  ereport(ERROR, (errmsg("no matching oid for function: %s", functionName)));
 }

 systable_endscan(scanDescriptor);
 heap_close(procRelation, AccessShareLock);

 return functionOid;
}
