
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_3__ {int pgConn; } ;
typedef TYPE_1__ MultiConnection ;
typedef scalar_t__ ConnStatusType ;


 int Assert (int) ;
 scalar_t__ CONNECTION_BAD ;
 scalar_t__ CONNECTION_OK ;
 TYPE_1__** ClientConnectionArray ;
 size_t INVALID_CONNECTION_ID ;
 scalar_t__ PQstatus (int ) ;

bool
MultiClientConnectionUp(int32 connectionId)
{
 MultiConnection *connection = ((void*)0);
 ConnStatusType connStatusType = CONNECTION_OK;
 bool connectionUp = 1;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));

 connStatusType = PQstatus(connection->pgConn);
 if (connStatusType == CONNECTION_BAD)
 {
  connectionUp = 0;
 }

 return connectionUp;
}
