
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;
typedef int FunctionCallInfo ;


 int AggCheckCallContext (int ,int *) ;
 int ERROR ;
 void* MemoryContextAlloc (int ,size_t) ;
 int elog (int ,char*) ;

__attribute__((used)) static void *
pallocInAggContext(FunctionCallInfo fcinfo, size_t size)
{
 MemoryContext aggregateContext;
 if (!AggCheckCallContext(fcinfo, &aggregateContext))
 {
  elog(ERROR, "Aggregate function called without an aggregate context");
 }
 return MemoryContextAlloc(aggregateContext, size);
}
