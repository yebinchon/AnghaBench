
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int * Name ;
typedef int HeapTuple ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 int SPI_getbinval (int ,int ,int,int*) ;

__attribute__((used)) static Name
ParseNameFieldFromHeapTuple(HeapTuple tuple, TupleDesc tupdesc, int colIndex)
{
 Datum resultDatum;
 bool isNull = 0;

 resultDatum = SPI_getbinval(tuple, tupdesc, colIndex, &isNull);
 if (isNull)
 {
  return ((void*)0);
 }

 return (Name) DatumGetPointer(resultDatum);
}
