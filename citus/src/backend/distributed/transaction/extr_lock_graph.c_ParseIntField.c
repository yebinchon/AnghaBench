
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int PGresult ;


 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int pg_strtouint64 (char*,int *,int) ;

int64
ParseIntField(PGresult *result, int rowIndex, int colIndex)
{
 char *resultString = ((void*)0);

 if (PQgetisnull(result, rowIndex, colIndex))
 {
  return 0;
 }

 resultString = PQgetvalue(result, rowIndex, colIndex);

 return pg_strtouint64(resultString, ((void*)0), 10);
}
