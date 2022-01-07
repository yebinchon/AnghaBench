
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int TupleDesc ;
typedef int HeapTuple ;
typedef int Datum ;


 int DatumGetInt64 (int ) ;
 int SPI_getbinval (int ,int ,int,int*) ;

__attribute__((used)) static int64
ParseIntFieldFromHeapTuple(HeapTuple tuple, TupleDesc tupdesc, int colIndex)
{
 Datum resultDatum;
 bool isNull = 0;

 resultDatum = SPI_getbinval(tuple, tupdesc, colIndex, &isNull);
 if (isNull)
 {
  return 0;
 }

 return DatumGetInt64(resultDatum);
}
