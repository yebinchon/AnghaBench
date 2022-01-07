
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int aggcombinefn; int aggserialfn; int aggdeserialfn; int aggtransfn; int aggfinalfn; int aggfnoid; } ;
struct TYPE_4__ {int valueInit; scalar_t__ value; scalar_t__ valueNull; int transtype; } ;
typedef TYPE_1__ StypeBox ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef TYPE_2__* Form_pg_aggregate ;
typedef scalar_t__ Datum ;


 int AGGFNOID ;
 int AggCheckCallContext (int ,int *) ;
 int Anum_pg_aggregate_agginitval ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 int GetUserId () ;
 int MemoryContextSwitchTo (int ) ;
 int OBJECT_AGGREGATE ;
 int OBJECT_FUNCTION ;
 scalar_t__ OidInputFunctionCall (int ,char*,int ,int) ;
 scalar_t__ SysCacheGetAttr (int ,int ,int ,scalar_t__*) ;
 char* TextDatumGetCString (scalar_t__) ;
 int aclcheckAggregate (int ,int ,int ) ;
 int elog (int ,char*) ;
 int getTypeInputInfo (int ,int *,int *) ;
 int pfree (char*) ;

__attribute__((used)) static void
InitializeStypeBox(FunctionCallInfo fcinfo, StypeBox *box, HeapTuple aggTuple, Oid
       transtype)
{
 Datum textInitVal;
 Form_pg_aggregate aggform = (Form_pg_aggregate) GETSTRUCT(aggTuple);
 Oid userId = GetUserId();


 aclcheckAggregate(OBJECT_AGGREGATE, userId, aggform->aggfnoid);
 aclcheckAggregate(OBJECT_FUNCTION, userId, aggform->aggfinalfn);
 aclcheckAggregate(OBJECT_FUNCTION, userId, aggform->aggtransfn);
 aclcheckAggregate(OBJECT_FUNCTION, userId, aggform->aggdeserialfn);
 aclcheckAggregate(OBJECT_FUNCTION, userId, aggform->aggserialfn);
 aclcheckAggregate(OBJECT_FUNCTION, userId, aggform->aggcombinefn);

 textInitVal = SysCacheGetAttr(AGGFNOID, aggTuple,
          Anum_pg_aggregate_agginitval,
          &box->valueNull);
 box->transtype = transtype;
 box->valueInit = !box->valueNull;
 if (box->valueNull)
 {
  box->value = (Datum) 0;
 }
 else
 {
  Oid typinput,
   typioparam;
  char *strInitVal;

  MemoryContext aggregateContext;
  MemoryContext oldContext;
  if (!AggCheckCallContext(fcinfo, &aggregateContext))
  {
   elog(ERROR, "InitializeStypeBox called from non aggregate context");
  }
  oldContext = MemoryContextSwitchTo(aggregateContext);

  getTypeInputInfo(transtype, &typinput, &typioparam);
  strInitVal = TextDatumGetCString(textInitVal);
  box->value = OidInputFunctionCall(typinput, strInitVal,
            typioparam, -1);
  pfree(strInitVal);

  MemoryContextSwitchTo(oldContext);
 }
}
