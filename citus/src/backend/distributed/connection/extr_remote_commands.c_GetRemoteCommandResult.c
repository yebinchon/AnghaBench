
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pgConn; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef TYPE_1__ MultiConnection ;


 int Assert (int) ;
 scalar_t__ CONNECTION_BAD ;
 int FinishConnectionIO (TYPE_1__*,int) ;
 int PGRES_FATAL_ERROR ;
 int * PQgetResult (int *) ;
 int PQisBusy (int *) ;
 int * PQmakeEmptyPGresult (int *,int ) ;
 scalar_t__ PQstatus (int *) ;

PGresult *
GetRemoteCommandResult(MultiConnection *connection, bool raiseInterrupts)
{
 PGconn *pgConn = connection->pgConn;
 PGresult *result = ((void*)0);






 if (!PQisBusy(pgConn))
 {
  return PQgetResult(connection->pgConn);
 }

 if (!FinishConnectionIO(connection, raiseInterrupts))
 {

  if (PQstatus(pgConn) == CONNECTION_BAD)
  {
   return PQmakeEmptyPGresult(pgConn, PGRES_FATAL_ERROR);
  }

  return ((void*)0);
 }


 Assert(!PQisBusy(pgConn));

 result = PQgetResult(connection->pgConn);

 return result;
}
