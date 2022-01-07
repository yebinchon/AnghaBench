
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int member_1; int member_0; } ;
struct pollfd {int events; scalar_t__ revents; void* fd; } ;
typedef int select ;
typedef int fd_set ;
struct TYPE_3__ {int pgConn; } ;
typedef scalar_t__ PostgresPollingStatusType ;
typedef TYPE_1__ MultiConnection ;


 int Assert (int) ;
 scalar_t__ EINTR ;
 scalar_t__ ENOMEM ;
 int ERROR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ PGRES_POLLING_READING ;
 scalar_t__ PGRES_POLLING_WRITING ;
 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 void* PQsocket (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_socket_access () ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static bool
ClientConnectionReady(MultiConnection *connection,
       PostgresPollingStatusType pollingStatus)
{
 bool clientConnectionReady = 0;
 int pollResult = 0;
 fd_set readFileDescriptorSet;
 fd_set writeFileDescriptorSet;
 fd_set exceptionFileDescriptorSet;
 struct timeval immediateTimeout = { 0, 0 };
 int connectionFileDescriptor = PQsocket(connection->pgConn);

 FD_ZERO(&readFileDescriptorSet);
 FD_ZERO(&writeFileDescriptorSet);
 FD_ZERO(&exceptionFileDescriptorSet);

 if (pollingStatus == PGRES_POLLING_READING)
 {
  FD_SET(connectionFileDescriptor, &exceptionFileDescriptorSet);
  FD_SET(connectionFileDescriptor, &readFileDescriptorSet);
 }
 else if (pollingStatus == PGRES_POLLING_WRITING)
 {
  FD_SET(connectionFileDescriptor, &exceptionFileDescriptorSet);
  FD_SET(connectionFileDescriptor, &writeFileDescriptorSet);
 }

 pollResult = (select) (connectionFileDescriptor + 1, &readFileDescriptorSet,
         &writeFileDescriptorSet, &exceptionFileDescriptorSet,
         &immediateTimeout);


 if (pollResult > 0)
 {
  clientConnectionReady = 1;
 }
 else if (pollResult == 0)
 {
  clientConnectionReady = 0;
 }
 else if (pollResult < 0)
 {
  if (errno == EINTR)
  {




   clientConnectionReady = 0;
  }
  else
  {
   Assert(errno == ENOMEM);
   ereport(ERROR, (errcode_for_socket_access(),
       errmsg("select()/poll() failed: %m")));
  }
 }

 return clientConnectionReady;
}
