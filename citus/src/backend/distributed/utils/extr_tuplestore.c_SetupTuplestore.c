
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Tuplestorestate ;
typedef int TupleDesc ;
struct TYPE_5__ {int setDesc; int * setResult; int returnMode; TYPE_1__* econtext; } ;
struct TYPE_4__ {int ecxt_per_query_memory; } ;
typedef TYPE_2__ ReturnSetInfo ;
typedef int MemoryContext ;
typedef int FunctionCallInfo ;


 TYPE_2__* CheckTuplestoreReturn (int ,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int SFRM_Materialize ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int work_mem ;

Tuplestorestate *
SetupTuplestore(FunctionCallInfo fcinfo, TupleDesc *tupleDescriptor)
{
 ReturnSetInfo *resultSet = CheckTuplestoreReturn(fcinfo, tupleDescriptor);
 MemoryContext perQueryContext = resultSet->econtext->ecxt_per_query_memory;

 MemoryContext oldContext = MemoryContextSwitchTo(perQueryContext);
 Tuplestorestate *tupstore = tuplestore_begin_heap(1, 0, work_mem);
 resultSet->returnMode = SFRM_Materialize;
 resultSet->setResult = tupstore;
 resultSet->setDesc = *tupleDescriptor;
 MemoryContextSwitchTo(oldContext);

 return tupstore;
}
