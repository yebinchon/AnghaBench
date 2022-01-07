
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
typedef size_t int32 ;
struct TYPE_7__ {int pgConn; } ;
typedef int PGresult ;
typedef TYPE_1__ MultiConnection ;
typedef scalar_t__ ExecStatusType ;
typedef int CopyStatus ;


 int Assert (int) ;
 int CLIENT_COPY_DONE ;
 int CLIENT_COPY_FAILED ;
 int CLIENT_COPY_MORE ;
 int CLIENT_INVALID_COPY ;
 TYPE_1__** ClientConnectionArray ;
 scalar_t__ ENOSPC ;
 int FATAL ;
 int ForgetResults (TYPE_1__*) ;
 int * GetRemoteCommandResult (TYPE_1__*,int) ;
 size_t INVALID_CONNECTION_ID ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int PQconsumeInput (int ) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int ,char**,int const) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReportConnectionError (TYPE_1__*,int ) ;
 int ReportResultError (TYPE_1__*,int *,int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 int write (size_t,char*,int) ;

CopyStatus
MultiClientCopyData(int32 connectionId, int32 fileDescriptor, uint64 *returnBytesReceived)
{
 MultiConnection *connection = ((void*)0);
 char *receiveBuffer = ((void*)0);
 int consumed = 0;
 int receiveLength = 0;
 const int asynchronous = 1;
 CopyStatus copyStatus = CLIENT_INVALID_COPY;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));





 consumed = PQconsumeInput(connection->pgConn);
 if (consumed == 0)
 {
  ereport(WARNING, (errmsg("could not read data from worker node")));
  return CLIENT_COPY_FAILED;
 }


 receiveLength = PQgetCopyData(connection->pgConn, &receiveBuffer, asynchronous);
 while (receiveLength > 0)
 {

  int appended = -1;
  errno = 0;

  if (returnBytesReceived)
  {
   *returnBytesReceived += receiveLength;
  }

  appended = write(fileDescriptor, receiveBuffer, receiveLength);
  if (appended != receiveLength)
  {

   if (errno == 0)
   {
    errno = ENOSPC;
   }
   ereport(FATAL, (errcode_for_file_access(),
       errmsg("could not append to copied file: %m")));
  }

  PQfreemem(receiveBuffer);

  receiveLength = PQgetCopyData(connection->pgConn, &receiveBuffer, asynchronous);
 }


 if (receiveLength == 0)
 {

  copyStatus = CLIENT_COPY_MORE;
 }
 else if (receiveLength == -1)
 {

  bool raiseInterrupts = 1;
  PGresult *result = GetRemoteCommandResult(connection, raiseInterrupts);
  ExecStatusType resultStatus = PQresultStatus(result);

  if (resultStatus == PGRES_COMMAND_OK)
  {
   copyStatus = CLIENT_COPY_DONE;
  }
  else
  {
   copyStatus = CLIENT_COPY_FAILED;

   ReportResultError(connection, result, WARNING);
  }

  PQclear(result);
 }
 else if (receiveLength == -2)
 {

  copyStatus = CLIENT_COPY_FAILED;

  ReportConnectionError(connection, WARNING);
 }


 if (receiveLength < 0)
 {
  ForgetResults(connection);
 }

 return copyStatus;
}
