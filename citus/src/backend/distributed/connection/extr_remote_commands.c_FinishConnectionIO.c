
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transactionFailed; } ;
struct TYPE_5__ {TYPE_1__ remoteTransaction; int * pgConn; } ;
typedef int PGconn ;
typedef TYPE_2__ MultiConnection ;


 int Assert (int *) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 scalar_t__ InterruptHoldoffCount ;
 int MyLatch ;
 int PG_WAIT_EXTENSION ;
 scalar_t__ PQconsumeInput (int *) ;
 int PQflush (int *) ;
 scalar_t__ PQisBusy (int *) ;
 int * PQisnonblocking (int *) ;
 int PQsocket (int *) ;
 scalar_t__ ProcDiePending ;
 scalar_t__ QueryCancelPending ;
 int ResetLatch (int ) ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;
 int WaitLatchOrSocket (int ,int,int,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static bool
FinishConnectionIO(MultiConnection *connection, bool raiseInterrupts)
{
 PGconn *pgConn = connection->pgConn;
 int sock = PQsocket(pgConn);

 Assert(pgConn);
 Assert(PQisnonblocking(pgConn));

 if (raiseInterrupts)
 {
  CHECK_FOR_INTERRUPTS();
 }


 while (1)
 {
  int sendStatus = 0;
  int rc = 0;
  int waitFlags = WL_POSTMASTER_DEATH | WL_LATCH_SET;


  sendStatus = PQflush(pgConn);


  if (sendStatus == -1)
  {
   return 0;
  }
  else if (sendStatus == 1)
  {
   waitFlags |= WL_SOCKET_WRITEABLE;
  }


  if (PQconsumeInput(pgConn) == 0)
  {
   return 0;
  }
  if (PQisBusy(pgConn))
  {
   waitFlags |= WL_SOCKET_READABLE;
  }

  if ((waitFlags & (WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE)) == 0)
  {

   return 1;
  }

  rc = WaitLatchOrSocket(MyLatch, waitFlags, sock, 0, PG_WAIT_EXTENSION);
  if (rc & WL_POSTMASTER_DEATH)
  {
   ereport(ERROR, (errmsg("postmaster was shut down, exiting")));
  }

  if (rc & WL_LATCH_SET)
  {
   ResetLatch(MyLatch);


   if (raiseInterrupts)
   {
    CHECK_FOR_INTERRUPTS();
   }






   if (InterruptHoldoffCount > 0 && (QueryCancelPending || ProcDiePending))
   {
    connection->remoteTransaction.transactionFailed = 1;
    break;
   }
  }
 }

 return 0;
}
