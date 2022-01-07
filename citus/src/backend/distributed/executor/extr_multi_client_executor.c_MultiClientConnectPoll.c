
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_5__ {int pgConn; } ;
typedef scalar_t__ PostgresPollingStatusType ;
typedef TYPE_1__ MultiConnection ;
typedef int ConnectStatus ;


 int Assert (int) ;
 int CLIENT_CONNECTION_BAD ;
 int CLIENT_CONNECTION_BUSY ;
 int CLIENT_CONNECTION_BUSY_READ ;
 int CLIENT_CONNECTION_BUSY_WRITE ;
 int CLIENT_CONNECTION_READY ;
 int CLIENT_INVALID_CONNECT ;
 TYPE_1__** ClientConnectionArray ;
 int ClientConnectionReady (TYPE_1__*,scalar_t__) ;
 scalar_t__* ClientPollingStatusArray ;
 size_t INVALID_CONNECTION_ID ;
 scalar_t__ PGRES_POLLING_FAILED ;
 scalar_t__ PGRES_POLLING_OK ;
 scalar_t__ PGRES_POLLING_READING ;
 scalar_t__ PGRES_POLLING_WRITING ;
 scalar_t__ PQconnectPoll (int ) ;
 int ReportConnectionError (TYPE_1__*,int ) ;
 int WARNING ;

ConnectStatus
MultiClientConnectPoll(int32 connectionId)
{
 MultiConnection *connection = ((void*)0);
 PostgresPollingStatusType pollingStatus = PGRES_POLLING_OK;
 ConnectStatus connectStatus = CLIENT_INVALID_CONNECT;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));

 pollingStatus = ClientPollingStatusArray[connectionId];
 if (pollingStatus == PGRES_POLLING_OK)
 {
  connectStatus = CLIENT_CONNECTION_READY;
 }
 else if (pollingStatus == PGRES_POLLING_READING)
 {
  bool readReady = ClientConnectionReady(connection, PGRES_POLLING_READING);
  if (readReady)
  {
   ClientPollingStatusArray[connectionId] = PQconnectPoll(connection->pgConn);
   connectStatus = CLIENT_CONNECTION_BUSY;
  }
  else
  {
   connectStatus = CLIENT_CONNECTION_BUSY_READ;
  }
 }
 else if (pollingStatus == PGRES_POLLING_WRITING)
 {
  bool writeReady = ClientConnectionReady(connection, PGRES_POLLING_WRITING);
  if (writeReady)
  {
   ClientPollingStatusArray[connectionId] = PQconnectPoll(connection->pgConn);
   connectStatus = CLIENT_CONNECTION_BUSY;
  }
  else
  {
   connectStatus = CLIENT_CONNECTION_BUSY_WRITE;
  }
 }
 else if (pollingStatus == PGRES_POLLING_FAILED)
 {
  ReportConnectionError(connection, WARNING);

  connectStatus = CLIENT_CONNECTION_BAD;
 }

 return connectStatus;
}
