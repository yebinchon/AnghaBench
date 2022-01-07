
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int Name ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DatumGetPointer (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int namein ;

__attribute__((used)) static Name
ParseNameField(PGresult *result, int rowIndex, int colIndex)
{
 char *resultString = ((void*)0);
 Datum resultStringDatum = 0;
 Datum nameDatum = 0;

 if (PQgetisnull(result, rowIndex, colIndex))
 {
  return (Name) nameDatum;
 }

 resultString = PQgetvalue(result, rowIndex, colIndex);
 resultStringDatum = CStringGetDatum(resultString);
 nameDatum = DirectFunctionCall1(namein, resultStringDatum);

 return (Name) DatumGetPointer(nameDatum);
}
