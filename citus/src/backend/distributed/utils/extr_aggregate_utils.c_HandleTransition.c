
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int eoh_context; } ;
struct TYPE_10__ {int isnull; } ;
struct TYPE_9__ {int valueNull; int value; int transtypeLen; int transtypeByVal; } ;
typedef TYPE_1__ StypeBox ;
typedef int MemoryContext ;
typedef TYPE_2__* FunctionCallInfo ;
typedef int Datum ;


 int AggCheckCallContext (TYPE_2__*,int *) ;
 scalar_t__ CurrentMemoryContext ;
 TYPE_7__* DatumGetEOHP (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 scalar_t__ DatumIsReadWriteExpandedObject (int ,int,int ) ;
 int DeleteExpandedObject (int ) ;
 int ERROR ;
 int FunctionCallInvoke (TYPE_2__*) ;
 scalar_t__ MemoryContextGetParent (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int datumCopy (int ,int ,int ) ;
 int elog (int ,char*) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static void
HandleTransition(StypeBox *box, FunctionCallInfo fcinfo, FunctionCallInfo innerFcinfo)
{
 Datum newVal = FunctionCallInvoke(innerFcinfo);
 bool newValIsNull = innerFcinfo->isnull;

 if (!box->transtypeByVal &&
  DatumGetPointer(newVal) != DatumGetPointer(box->value))
 {
  if (!newValIsNull)
  {
   MemoryContext aggregateContext;
   MemoryContext oldContext;

   if (!AggCheckCallContext(fcinfo, &aggregateContext))
   {
    elog(ERROR,
      "HandleTransition called from non aggregate context");
   }

   oldContext = MemoryContextSwitchTo(aggregateContext);
   if (!(DatumIsReadWriteExpandedObject(newVal,
             0, box->transtypeLen) &&
      MemoryContextGetParent(DatumGetEOHP(newVal)->eoh_context) ==
      CurrentMemoryContext))
   {
    newVal = datumCopy(newVal, box->transtypeByVal, box->transtypeLen);
   }
   MemoryContextSwitchTo(oldContext);
  }

  if (!box->valueNull)
  {
   if (DatumIsReadWriteExpandedObject(box->value,
              0, box->transtypeLen))
   {
    DeleteExpandedObject(box->value);
   }
   else
   {
    pfree(DatumGetPointer(box->value));
   }
  }
 }

 box->value = newVal;
 box->valueNull = newValIsNull;
}
