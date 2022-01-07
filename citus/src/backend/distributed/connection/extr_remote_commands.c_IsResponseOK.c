
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef scalar_t__ ExecStatusType ;


 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_SINGLE_TUPLE ;
 scalar_t__ PGRES_TUPLES_OK ;
 scalar_t__ PQresultStatus (int *) ;

bool
IsResponseOK(PGresult *result)
{
 ExecStatusType resultStatus = PQresultStatus(result);

 if (resultStatus == PGRES_SINGLE_TUPLE || resultStatus == PGRES_TUPLES_OK ||
  resultStatus == PGRES_COMMAND_OK)
 {
  return 1;
 }

 return 0;
}
