
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WaitEventSet ;
struct TYPE_3__ {int pgConn; } ;
typedef TYPE_1__ MultiConnection ;


 int AddWaitEventToSet (int *,int,int,int *,void*) ;
 int * CreateWaitEventSet (int ,int) ;
 int CurrentMemoryContext ;
 int FD_SETSIZE ;
 int * MyLatch ;
 int PGINVALID_SOCKET ;
 int PQsocket (int ) ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;

__attribute__((used)) static WaitEventSet *
BuildWaitEventSet(MultiConnection **allConnections, int totalConnectionCount,
      int pendingConnectionsStartIndex)
{
 int pendingConnectionCount = totalConnectionCount - pendingConnectionsStartIndex;
 WaitEventSet *waitEventSet = ((void*)0);
 int connectionIndex = 0;





 if (pendingConnectionCount > FD_SETSIZE - 3)
 {
  pendingConnectionCount = FD_SETSIZE - 3;
 }



 waitEventSet = CreateWaitEventSet(CurrentMemoryContext, pendingConnectionCount + 2);

 for (connectionIndex = 0; connectionIndex < pendingConnectionCount; connectionIndex++)
 {
  MultiConnection *connection = allConnections[pendingConnectionsStartIndex +
              connectionIndex];
  int sock = PQsocket(connection->pgConn);





  int eventMask = WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE;

  AddWaitEventToSet(waitEventSet, eventMask, sock, ((void*)0), (void *) connection);
 }





 AddWaitEventToSet(waitEventSet, WL_POSTMASTER_DEATH, PGINVALID_SOCKET, ((void*)0), ((void*)0));
 AddWaitEventToSet(waitEventSet, WL_LATCH_SET, PGINVALID_SOCKET, MyLatch, ((void*)0));

 return waitEventSet;
}
