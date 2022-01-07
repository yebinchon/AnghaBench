
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_4__ {int pgConn; } ;
typedef TYPE_1__ MultiConnection ;


 int ApplyLogRedaction (char const*) ;
 int Assert (int) ;
 TYPE_1__** ClientConnectionArray ;
 size_t INVALID_CONNECTION_ID ;
 int PQerrorMessage (int ) ;
 int SendRemoteCommand (TYPE_1__*,char const*) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errdetail (char*,int ) ;
 int errmsg (char*,int ) ;
 char* pchomp (int ) ;

bool
MultiClientSendQuery(int32 connectionId, const char *query)
{
 MultiConnection *connection = ((void*)0);
 bool success = 1;
 int querySent = 0;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));

 querySent = SendRemoteCommand(connection, query);
 if (querySent == 0)
 {
  char *errorMessage = pchomp(PQerrorMessage(connection->pgConn));







  ereport(WARNING, (errmsg("could not send remote query \"%s\"",
         ApplyLogRedaction(query)),
        errdetail("Client error: %s",
         ApplyLogRedaction(errorMessage))));

  success = 0;
 }

 return success;
}
