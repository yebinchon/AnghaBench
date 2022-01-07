
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef size_t int32 ;
struct TYPE_6__ {int pgConn; } ;
typedef TYPE_1__ MultiConnection ;
typedef scalar_t__ ConnStatusType ;


 size_t AllocateConnectionId () ;
 scalar_t__ CONNECTION_OK ;
 TYPE_1__** ClientConnectionArray ;
 int CloseConnection (TYPE_1__*) ;
 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 int ERROR ;
 int FORCE_NEW_CONNECTION ;
 TYPE_1__* GetNodeUserDatabaseConnection (int,char const*,int ,char const*,char const*) ;
 size_t INVALID_CONNECTION_ID ;
 scalar_t__ PQstatus (int ) ;
 int ReportConnectionError (TYPE_1__*,int ) ;
 int WARNING ;
 scalar_t__ XACT_MODIFICATION_NONE ;
 scalar_t__ XactModificationLevel ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

int32
MultiClientConnect(const char *nodeName, uint32 nodePort, const char *nodeDatabase,
       const char *userName)
{
 MultiConnection *connection = ((void*)0);
 ConnStatusType connStatusType = CONNECTION_OK;
 int32 connectionId = AllocateConnectionId();
 int connectionFlags = FORCE_NEW_CONNECTION;

 if (connectionId == INVALID_CONNECTION_ID)
 {
  ereport(WARNING, (errmsg("could not allocate connection in connection pool")));
  return connectionId;
 }

 if (XactModificationLevel > XACT_MODIFICATION_NONE)
 {
  ereport(ERROR, (errcode(ERRCODE_ACTIVE_SQL_TRANSACTION),
      errmsg("cannot open new connections after the first modification "
          "command within a transaction")));
 }


 connection = GetNodeUserDatabaseConnection(connectionFlags, nodeName, nodePort,
              userName, nodeDatabase);

 connStatusType = PQstatus(connection->pgConn);

 if (connStatusType == CONNECTION_OK)
 {
  ClientConnectionArray[connectionId] = connection;
 }
 else
 {
  ReportConnectionError(connection, WARNING);
  CloseConnection(connection);
  connectionId = INVALID_CONNECTION_ID;
 }

 return connectionId;
}
