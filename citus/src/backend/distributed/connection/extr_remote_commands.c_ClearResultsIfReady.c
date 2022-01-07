
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pgConn; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef TYPE_1__ MultiConnection ;
typedef scalar_t__ ExecStatusType ;


 int Assert (int ) ;
 scalar_t__ CONNECTION_OK ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_COPY_IN ;
 scalar_t__ PGRES_COPY_OUT ;
 scalar_t__ PGRES_SINGLE_TUPLE ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 scalar_t__ PQconsumeInput (int *) ;
 int PQflush (int *) ;
 int * PQgetResult (int *) ;
 scalar_t__ PQisBusy (int *) ;
 int PQisnonblocking (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQstatus (int *) ;
 int pg_unreachable () ;

bool
ClearResultsIfReady(MultiConnection *connection)
{
 PGconn *pgConn = connection->pgConn;

 if (PQstatus(pgConn) != CONNECTION_OK)
 {
  return 0;
 }

 Assert(PQisnonblocking(pgConn));

 while (1)
 {
  PGresult *result = ((void*)0);
  ExecStatusType resultStatus;






  if (PQisBusy(pgConn))
  {
   if (PQflush(pgConn) == -1)
   {

    return 0;
   }
   if (PQconsumeInput(pgConn) == 0)
   {

    return 0;
   }
  }


  if (PQisBusy(pgConn))
  {
   return 0;
  }

  result = PQgetResult(pgConn);
  if (result == ((void*)0))
  {

   return 1;
  }

  resultStatus = PQresultStatus(result);


  PQclear(result);

  if (resultStatus == PGRES_COPY_IN || resultStatus == PGRES_COPY_OUT)
  {

   return 0;
  }

  if (!(resultStatus == PGRES_SINGLE_TUPLE || resultStatus == PGRES_TUPLES_OK ||
     resultStatus == PGRES_COMMAND_OK))
  {

   return 0;
  }


 }

 pg_unreachable();
}
