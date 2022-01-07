
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int strlen (char*) ;

bool
ParseBoolField(PGresult *result, int rowIndex, int colIndex)
{
 char *resultString = ((void*)0);

 if (PQgetisnull(result, rowIndex, colIndex))
 {
  return 0;
 }

 resultString = PQgetvalue(result, rowIndex, colIndex);
 if (strlen(resultString) != 1)
 {
  return 0;
 }

 return resultString[0] == 't';
}
