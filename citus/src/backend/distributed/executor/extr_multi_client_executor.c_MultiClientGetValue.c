
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 char* PQgetvalue (int *,int,int) ;

char *
MultiClientGetValue(void *queryResult, int rowIndex, int columnIndex)
{
 char *value = PQgetvalue((PGresult *) queryResult, rowIndex, columnIndex);
 return value;
}
