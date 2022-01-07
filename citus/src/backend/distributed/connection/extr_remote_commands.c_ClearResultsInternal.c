
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pgConn; } ;
typedef int PGresult ;
typedef TYPE_1__ MultiConnection ;


 int * GetRemoteCommandResult (TYPE_1__*,int) ;
 int IsResponseOK (int *) ;
 int MarkRemoteTransactionFailed (TYPE_1__*,int) ;
 scalar_t__ PGRES_COPY_IN ;
 scalar_t__ PGRES_FATAL_ERROR ;
 int PQclear (int *) ;
 int PQputCopyEnd (int ,int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReportResultError (TYPE_1__*,int *,int ) ;
 int WARNING ;

__attribute__((used)) static bool
ClearResultsInternal(MultiConnection *connection, bool raiseErrors, bool discardWarnings)
{
 bool success = 1;

 while (1)
 {
  PGresult *result = GetRemoteCommandResult(connection, raiseErrors);
  if (result == ((void*)0))
  {
   break;
  }





  if (PQresultStatus(result) == PGRES_COPY_IN)
  {
   PQputCopyEnd(connection->pgConn, ((void*)0));
  }

  if (!IsResponseOK(result))
  {
   if (!discardWarnings)
   {
    ReportResultError(connection, result, WARNING);
   }

   MarkRemoteTransactionFailed(connection, raiseErrors);

   success = 0;


   if (PQresultStatus(result) == PGRES_FATAL_ERROR)
   {
    PQclear(result);

    break;
   }
  }

  PQclear(result);
 }

 return success;
}
