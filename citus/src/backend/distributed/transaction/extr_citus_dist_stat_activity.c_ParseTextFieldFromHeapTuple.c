
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int TupleDesc ;
typedef int HeapTuple ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int SPI_getbinval (int ,int ,int,int*) ;

__attribute__((used)) static text *
ParseTextFieldFromHeapTuple(HeapTuple tuple, TupleDesc tupdesc, int colIndex)
{
 Datum resultDatum;
 bool isNull = 0;

 resultDatum = SPI_getbinval(tuple, tupdesc, colIndex, &isNull);
 if (isNull)
 {
  return ((void*)0);
 }

 return (text *) DatumGetPointer(resultDatum);
}
