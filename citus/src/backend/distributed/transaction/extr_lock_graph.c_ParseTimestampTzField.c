
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int PGresult ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DT_NOBEGIN ;
 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall3 (int ,int ,int ,int) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int timestamptz_in ;

TimestampTz
ParseTimestampTzField(PGresult *result, int rowIndex, int colIndex)
{
 char *resultString = ((void*)0);
 Datum resultStringDatum = 0;
 Datum timestampDatum = 0;

 if (PQgetisnull(result, rowIndex, colIndex))
 {
  return DT_NOBEGIN;
 }

 resultString = PQgetvalue(result, rowIndex, colIndex);
 resultStringDatum = CStringGetDatum(resultString);
 timestampDatum = DirectFunctionCall3(timestamptz_in, resultStringDatum, 0, -1);

 return DatumGetTimestampTz(timestampDatum);
}
