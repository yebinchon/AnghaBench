
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pgConn; } ;
struct TYPE_4__ {scalar_t__ phase; int pollmode; TYPE_2__* connection; } ;
typedef int PostgresPollingStatusType ;
typedef TYPE_1__ MultiConnectionPollState ;
typedef TYPE_2__ MultiConnection ;
typedef scalar_t__ ConnStatusType ;


 int Assert (int) ;
 scalar_t__ CONNECTION_BAD ;
 scalar_t__ CONNECTION_OK ;
 void* MULTI_CONNECTION_PHASE_CONNECTED ;
 scalar_t__ MULTI_CONNECTION_PHASE_CONNECTING ;
 void* MULTI_CONNECTION_PHASE_ERROR ;
 int PGRES_POLLING_FAILED ;
 int PGRES_POLLING_OK ;
 int PGRES_POLLING_READING ;
 int PGRES_POLLING_WRITING ;
 int PQconnectPoll (int ) ;
 scalar_t__ PQstatus (int ) ;

__attribute__((used)) static bool
MultiConnectionStatePoll(MultiConnectionPollState *connectionState)
{
 MultiConnection *connection = connectionState->connection;
 ConnStatusType status = PQstatus(connection->pgConn);
 PostgresPollingStatusType oldPollmode = connectionState->pollmode;

 Assert(connectionState->phase == MULTI_CONNECTION_PHASE_CONNECTING);

 if (status == CONNECTION_OK)
 {
  connectionState->phase = MULTI_CONNECTION_PHASE_CONNECTED;
  return 1;
 }
 else if (status == CONNECTION_BAD)
 {

  connectionState->phase = MULTI_CONNECTION_PHASE_ERROR;
  return 1;
 }
 else
 {
  connectionState->phase = MULTI_CONNECTION_PHASE_CONNECTING;
 }

 connectionState->pollmode = PQconnectPoll(connection->pgConn);




 if (connectionState->pollmode == PGRES_POLLING_FAILED)
 {
  connectionState->phase = MULTI_CONNECTION_PHASE_ERROR;
  return 1;
 }
 else if (connectionState->pollmode == PGRES_POLLING_OK)
 {
  connectionState->phase = MULTI_CONNECTION_PHASE_CONNECTED;
  return 1;
 }
 else
 {
  Assert(connectionState->pollmode == PGRES_POLLING_WRITING ||
      connectionState->pollmode == PGRES_POLLING_READING);
 }

 return (oldPollmode != connectionState->pollmode) ? 1 : 0;
}
