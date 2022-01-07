
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef int MultiConnection ;


 int Assert (int) ;
 int ** ClientConnectionArray ;
 size_t INVALID_CONNECTION_ID ;
 int SendCancelationRequest (int *) ;

bool
MultiClientCancel(int32 connectionId)
{
 MultiConnection *connection = ((void*)0);
 bool canceled = 1;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));

 canceled = SendCancelationRequest(connection);

 return canceled;
}
