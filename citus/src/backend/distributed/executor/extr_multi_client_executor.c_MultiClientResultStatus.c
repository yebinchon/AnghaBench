
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_3__ {int pgConn; } ;
typedef int ResultStatus ;
typedef TYPE_1__ MultiConnection ;
typedef scalar_t__ ConnStatusType ;


 int Assert (int) ;
 int CLIENT_INVALID_RESULT_STATUS ;
 int CLIENT_RESULT_BUSY ;
 int CLIENT_RESULT_READY ;
 int CLIENT_RESULT_UNAVAILABLE ;
 scalar_t__ CONNECTION_BAD ;
 scalar_t__ CONNECTION_OK ;
 TYPE_1__** ClientConnectionArray ;
 size_t INVALID_CONNECTION_ID ;
 int PQconsumeInput (int ) ;
 int PQisBusy (int ) ;
 scalar_t__ PQstatus (int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

ResultStatus
MultiClientResultStatus(int32 connectionId)
{
 MultiConnection *connection = ((void*)0);
 int consumed = 0;
 ConnStatusType connStatusType = CONNECTION_OK;
 ResultStatus resultStatus = CLIENT_INVALID_RESULT_STATUS;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));

 connStatusType = PQstatus(connection->pgConn);
 if (connStatusType == CONNECTION_BAD)
 {
  ereport(WARNING, (errmsg("could not maintain connection to worker node")));
  return CLIENT_RESULT_UNAVAILABLE;
 }


 consumed = PQconsumeInput(connection->pgConn);
 if (consumed != 0)
 {
  int connectionBusy = PQisBusy(connection->pgConn);
  if (connectionBusy == 0)
  {
   resultStatus = CLIENT_RESULT_READY;
  }
  else
  {
   resultStatus = CLIENT_RESULT_BUSY;
  }
 }
 else
 {
  ereport(WARNING, (errmsg("could not consume data from worker node")));
  resultStatus = CLIENT_RESULT_UNAVAILABLE;
 }

 return resultStatus;
}
