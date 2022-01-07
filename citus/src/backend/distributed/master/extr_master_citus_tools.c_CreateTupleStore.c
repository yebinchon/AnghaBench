
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int text ;
typedef int Tuplestorestate ;
typedef int TupleDesc ;
struct TYPE_4__ {int len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int * HeapTuple ;
typedef int Datum ;


 int BoolGetDatum (int) ;
 int Int32GetDatum (int) ;
 int PointerGetDatum (int *) ;
 int * cstring_to_text_with_len (int ,int ) ;
 int * heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int *) ;
 int pfree (int *) ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int tuplestore_donestoring (int *) ;
 int tuplestore_puttuple (int *,int *) ;
 int work_mem ;

__attribute__((used)) static Tuplestorestate *
CreateTupleStore(TupleDesc tupleDescriptor,
     StringInfo *nodeNameArray, int *nodePortArray, bool *statusArray,
     StringInfo *resultArray, int commandCount)
{
 Tuplestorestate *tupleStore = tuplestore_begin_heap(1, 0, work_mem);
 int commandIndex = 0;
 bool nulls[4] = { 0, 0, 0, 0 };

 for (commandIndex = 0; commandIndex < commandCount; commandIndex++)
 {
  Datum values[4];
  HeapTuple tuple = ((void*)0);
  StringInfo nodeNameString = nodeNameArray[commandIndex];
  StringInfo resultString = resultArray[commandIndex];
  text *nodeNameText = cstring_to_text_with_len(nodeNameString->data,
               nodeNameString->len);
  text *resultText = cstring_to_text_with_len(resultString->data,
             resultString->len);

  values[0] = PointerGetDatum(nodeNameText);
  values[1] = Int32GetDatum(nodePortArray[commandIndex]);
  values[2] = BoolGetDatum(statusArray[commandIndex]);
  values[3] = PointerGetDatum(resultText);

  tuple = heap_form_tuple(tupleDescriptor, values, nulls);
  tuplestore_puttuple(tupleStore, tuple);

  heap_freetuple(tuple);
  pfree(nodeNameText);
  pfree(resultText);
 }

 tuplestore_donestoring(tupleStore);

 return tupleStore;
}
