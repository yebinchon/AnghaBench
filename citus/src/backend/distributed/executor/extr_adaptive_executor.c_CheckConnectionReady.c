
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int latestUnconsumedWaitEvents; TYPE_2__* connection; } ;
typedef TYPE_1__ WorkerSession ;
struct TYPE_6__ {int pgConn; void* connectionState; } ;
typedef TYPE_2__ MultiConnection ;
typedef scalar_t__ ConnStatusType ;


 scalar_t__ CONNECTION_BAD ;
 void* MULTI_CONNECTION_LOST ;
 scalar_t__ PQconsumeInput (int ) ;
 int PQflush (int ) ;
 int PQisBusy (int ) ;
 scalar_t__ PQstatus (int ) ;
 int UpdateConnectionWaitFlags (TYPE_1__*,int) ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;

__attribute__((used)) static bool
CheckConnectionReady(WorkerSession *session)
{
 int sendStatus = 0;
 MultiConnection *connection = session->connection;
 int waitFlags = WL_SOCKET_READABLE;
 bool connectionReady = 0;

 ConnStatusType status = PQstatus(connection->pgConn);
 if (status == CONNECTION_BAD)
 {
  connection->connectionState = MULTI_CONNECTION_LOST;
  return 0;
 }


 sendStatus = PQflush(connection->pgConn);
 if (sendStatus == -1)
 {
  connection->connectionState = MULTI_CONNECTION_LOST;
  return 0;
 }
 else if (sendStatus == 1)
 {

  waitFlags = waitFlags | WL_SOCKET_WRITEABLE;
 }

 if ((session->latestUnconsumedWaitEvents & WL_SOCKET_READABLE) != 0)
 {
  if (PQconsumeInput(connection->pgConn) == 0)
  {
   connection->connectionState = MULTI_CONNECTION_LOST;
   return 0;
  }
 }

 if (!PQisBusy(connection->pgConn))
 {
  connectionReady = 1;
 }

 UpdateConnectionWaitFlags(session, waitFlags);


 session->latestUnconsumedWaitEvents = 0;

 return connectionReady;
}
