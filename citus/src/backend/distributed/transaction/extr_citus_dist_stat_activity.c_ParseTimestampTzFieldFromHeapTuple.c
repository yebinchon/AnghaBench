
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int TimestampTz ;
typedef int HeapTuple ;
typedef int Datum ;


 int DT_NOBEGIN ;
 int DatumGetTimestampTz (int ) ;
 int SPI_getbinval (int ,int ,int,int*) ;

__attribute__((used)) static TimestampTz
ParseTimestampTzFieldFromHeapTuple(HeapTuple tuple, TupleDesc tupdesc, int colIndex)
{
 Datum resultDatum;
 bool isNull = 0;

 resultDatum = SPI_getbinval(tuple, tupdesc, colIndex, &isNull);
 if (isNull)
 {
  return DT_NOBEGIN;
 }

 return DatumGetTimestampTz(resultDatum);
}
