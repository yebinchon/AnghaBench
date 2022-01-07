
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef int MultiConnection ;


 int Assert (int) ;
 int ** ClientConnectionArray ;
 int* ClientPollingStatusArray ;
 int CloseConnection (int *) ;
 size_t INVALID_CONNECTION_ID ;

void
MultiClientDisconnect(int32 connectionId)
{
 MultiConnection *connection = ((void*)0);
 const int InvalidPollingStatus = -1;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));

 CloseConnection(connection);

 ClientConnectionArray[connectionId] = ((void*)0);
 ClientPollingStatusArray[connectionId] = InvalidPollingStatus;
}
