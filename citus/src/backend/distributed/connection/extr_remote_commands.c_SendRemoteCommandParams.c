
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pgConn; } ;
typedef int PGconn ;
typedef int Oid ;
typedef TYPE_1__ MultiConnection ;


 int Assert (int ) ;
 scalar_t__ CONNECTION_OK ;
 int LogRemoteCommand (TYPE_1__*,char const*) ;
 int PQisnonblocking (int *) ;
 int PQsendQueryParams (int *,char const*,int,int const*,char const* const*,int *,int *,int ) ;
 scalar_t__ PQstatus (int *) ;

int
SendRemoteCommandParams(MultiConnection *connection, const char *command,
      int parameterCount, const Oid *parameterTypes,
      const char *const *parameterValues)
{
 PGconn *pgConn = connection->pgConn;
 int rc = 0;

 LogRemoteCommand(connection, command);





 if (!pgConn || PQstatus(pgConn) != CONNECTION_OK)
 {
  return 0;
 }

 Assert(PQisnonblocking(pgConn));

 rc = PQsendQueryParams(pgConn, command, parameterCount, parameterTypes,
         parameterValues, ((void*)0), ((void*)0), 0);

 return rc;
}
