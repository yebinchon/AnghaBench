
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef int StringInfo ;
typedef int PGresult ;
typedef int List ;
typedef scalar_t__ ExecStatusType ;


 int * NIL ;
 scalar_t__ PGRES_TUPLES_OK ;
 char* PQgetvalue (int *,scalar_t__,int const) ;
 scalar_t__ PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int appendStringInfoString (int ,char*) ;
 int * lappend (int *,int ) ;
 int makeStringInfo () ;

List *
ReadFirstColumnAsText(PGresult *queryResult)
{
 List *resultRowList = NIL;
 const int columnIndex = 0;
 int64 rowIndex = 0;
 int64 rowCount = 0;

 ExecStatusType status = PQresultStatus(queryResult);
 if (status == PGRES_TUPLES_OK)
 {
  rowCount = PQntuples(queryResult);
 }

 for (rowIndex = 0; rowIndex < rowCount; rowIndex++)
 {
  char *rowValue = PQgetvalue(queryResult, rowIndex, columnIndex);

  StringInfo rowValueString = makeStringInfo();
  appendStringInfoString(rowValueString, rowValue);

  resultRowList = lappend(resultRowList, rowValueString);
 }

 return resultRowList;
}
