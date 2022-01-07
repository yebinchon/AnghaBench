
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int PGresult ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 scalar_t__ DatumGetPointer (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int textin ;

__attribute__((used)) static text *
ParseTextField(PGresult *result, int rowIndex, int colIndex)
{
 char *resultString = ((void*)0);
 Datum resultStringDatum = 0;
 Datum textDatum = 0;

 if (PQgetisnull(result, rowIndex, colIndex))
 {
  return ((void*)0);
 }

 resultString = PQgetvalue(result, rowIndex, colIndex);
 resultStringDatum = CStringGetDatum(resultString);
 textDatum = DirectFunctionCall1(textin, resultStringDatum);

 return (text *) DatumGetPointer(textDatum);
}
