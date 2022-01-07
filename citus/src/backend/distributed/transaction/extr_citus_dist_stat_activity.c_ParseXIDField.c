
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int PGresult ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DatumGetTransactionId (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int PG_UINT32_MAX ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int xidin ;

__attribute__((used)) static TransactionId
ParseXIDField(PGresult *result, int rowIndex, int colIndex)
{
 char *resultString = ((void*)0);
 Datum resultStringDatum = 0;
 Datum XIDDatum = 0;

 if (PQgetisnull(result, rowIndex, colIndex))
 {




  return PG_UINT32_MAX;
 }

 resultString = PQgetvalue(result, rowIndex, colIndex);
 resultStringDatum = CStringGetDatum(resultString);
 XIDDatum = DirectFunctionCall1(xidin, resultStringDatum);

 return DatumGetTransactionId(XIDDatum);
}
