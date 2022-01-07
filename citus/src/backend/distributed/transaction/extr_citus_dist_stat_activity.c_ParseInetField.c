
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;
typedef int PGresult ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int * DatumGetInetP (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int inet_in ;

__attribute__((used)) static inet *
ParseInetField(PGresult *result, int rowIndex, int colIndex)
{
 char *resultString = ((void*)0);
 Datum resultStringDatum = 0;
 Datum inetDatum = 0;

 if (PQgetisnull(result, rowIndex, colIndex))
 {
  return ((void*)0);
 }

 resultString = PQgetvalue(result, rowIndex, colIndex);
 resultStringDatum = CStringGetDatum(resultString);
 inetDatum = DirectFunctionCall1(inet_in, resultStringDatum);

 return DatumGetInetP(inetDatum);
}
