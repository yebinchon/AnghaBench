
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valueNull; int valueInit; int transtypeLen; int transtypeByVal; int value; } ;
typedef TYPE_1__ StypeBox ;
typedef int MemoryContext ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int AggCheckCallContext (int ,int *) ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int datumCopy (int ,int ,int ) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
HandleStrictUninit(StypeBox *box, FunctionCallInfo fcinfo, Datum value)
{
 MemoryContext aggregateContext;
 MemoryContext oldContext;

 if (!AggCheckCallContext(fcinfo, &aggregateContext))
 {
  elog(ERROR, "HandleStrictUninit called from non aggregate context");
 }

 oldContext = MemoryContextSwitchTo(aggregateContext);
 box->value = datumCopy(value, box->transtypeByVal, box->transtypeLen);
 MemoryContextSwitchTo(oldContext);

 box->valueNull = 0;
 box->valueInit = 1;
}
