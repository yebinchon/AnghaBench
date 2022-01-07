
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ copyBytesWrittenSinceLastFlush; int * pgConn; } ;
typedef int PGconn ;
typedef TYPE_1__ MultiConnection ;


 int Assert (int ) ;
 scalar_t__ CONNECTION_OK ;
 int FinishConnectionIO (TYPE_1__*,int) ;
 scalar_t__ MAX_PUT_COPY_DATA_BUFFER_SIZE ;
 int PQisnonblocking (int *) ;
 int PQputCopyData (int *,char const*,int) ;
 scalar_t__ PQstatus (int *) ;

bool
PutRemoteCopyData(MultiConnection *connection, const char *buffer, int nbytes)
{
 PGconn *pgConn = connection->pgConn;
 int copyState = 0;
 bool allowInterrupts = 1;

 if (PQstatus(pgConn) != CONNECTION_OK)
 {
  return 0;
 }

 Assert(PQisnonblocking(pgConn));

 copyState = PQputCopyData(pgConn, buffer, nbytes);
 if (copyState == -1)
 {
  return 0;
 }
 connection->copyBytesWrittenSinceLastFlush += nbytes;
 if (connection->copyBytesWrittenSinceLastFlush > MAX_PUT_COPY_DATA_BUFFER_SIZE)
 {
  connection->copyBytesWrittenSinceLastFlush = 0;
  return FinishConnectionIO(connection, allowInterrupts);
 }

 return 1;
}
