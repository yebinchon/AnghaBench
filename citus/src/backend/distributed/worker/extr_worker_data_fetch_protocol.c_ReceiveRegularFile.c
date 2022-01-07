
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ int32 ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef scalar_t__ ResultStatus ;
typedef scalar_t__ QueryStatus ;
typedef scalar_t__ CopyStatus ;


 scalar_t__ BasicOpenFilePerm (char*,int const,int const) ;
 scalar_t__ CLIENT_COPY_DONE ;
 scalar_t__ CLIENT_COPY_MORE ;
 scalar_t__ CLIENT_INVALID_QUERY ;
 scalar_t__ CLIENT_QUERY_COPY ;
 scalar_t__ CLIENT_RESULT_BUSY ;
 scalar_t__ CLIENT_RESULT_READY ;
 int CitusDeleteFile (char*) ;
 char* CurrentDatabaseName () ;
 int DEBUG2 ;
 scalar_t__ INVALID_CONNECTION_ID ;
 int MAXPGPATH ;
 scalar_t__ MultiClientConnect (char const*,int ,char*,char const*) ;
 scalar_t__ MultiClientCopyData (scalar_t__,scalar_t__,int *) ;
 int MultiClientDisconnect (scalar_t__) ;
 scalar_t__ MultiClientQueryStatus (scalar_t__) ;
 scalar_t__ MultiClientResultStatus (scalar_t__) ;
 int MultiClientSendQuery (scalar_t__,char*) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PG_BINARY ;
 int ReceiveResourceCleanup (scalar_t__,char*,scalar_t__) ;
 long RemoteTaskCheckInterval ;
 int S_IRUSR ;
 int S_IWUSR ;
 int WARNING ;
 int close (scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int pg_usleep (long) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static bool
ReceiveRegularFile(const char *nodeName, uint32 nodePort, const char *nodeUser,
       StringInfo transmitCommand, StringInfo filePath)
{
 int32 fileDescriptor = -1;
 char filename[MAXPGPATH];
 int closed = -1;
 const int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
 const int fileMode = (S_IRUSR | S_IWUSR);

 QueryStatus queryStatus = CLIENT_INVALID_QUERY;
 int32 connectionId = INVALID_CONNECTION_ID;
 char *nodeDatabase = ((void*)0);
 bool querySent = 0;
 bool queryReady = 0;
 bool copyDone = 0;


 snprintf(filename, MAXPGPATH, "%s", filePath->data);

 fileDescriptor = BasicOpenFilePerm(filename, fileFlags, fileMode);
 if (fileDescriptor < 0)
 {
  ereport(WARNING, (errcode_for_file_access(),
        errmsg("could not open file \"%s\": %m", filePath->data)));

  return 0;
 }


 nodeDatabase = CurrentDatabaseName();


 connectionId = MultiClientConnect(nodeName, nodePort, nodeDatabase, nodeUser);
 if (connectionId == INVALID_CONNECTION_ID)
 {
  ReceiveResourceCleanup(connectionId, filename, fileDescriptor);

  return 0;
 }


 querySent = MultiClientSendQuery(connectionId, transmitCommand->data);
 if (!querySent)
 {
  ReceiveResourceCleanup(connectionId, filename, fileDescriptor);

  return 0;
 }


 while (!queryReady)
 {
  ResultStatus resultStatus = MultiClientResultStatus(connectionId);
  if (resultStatus == CLIENT_RESULT_READY)
  {
   queryReady = 1;
  }
  else if (resultStatus == CLIENT_RESULT_BUSY)
  {

   long sleepIntervalPerCycle = RemoteTaskCheckInterval * 1000L;
   pg_usleep(sleepIntervalPerCycle);
  }
  else
  {
   ReceiveResourceCleanup(connectionId, filename, fileDescriptor);

   return 0;
  }
 }


 queryStatus = MultiClientQueryStatus(connectionId);
 if (queryStatus != CLIENT_QUERY_COPY)
 {
  ReceiveResourceCleanup(connectionId, filename, fileDescriptor);

  return 0;
 }


 while (!copyDone)
 {
  CopyStatus copyStatus = MultiClientCopyData(connectionId, fileDescriptor, ((void*)0));
  if (copyStatus == CLIENT_COPY_DONE)
  {
   copyDone = 1;
  }
  else if (copyStatus == CLIENT_COPY_MORE)
  {

  }
  else
  {
   ReceiveResourceCleanup(connectionId, filename, fileDescriptor);

   return 0;
  }
 }


 MultiClientDisconnect(connectionId);

 closed = close(fileDescriptor);
 if (closed < 0)
 {
  ereport(WARNING, (errcode_for_file_access(),
        errmsg("could not close file \"%s\": %m", filename)));


  CitusDeleteFile(filename);

  return 0;
 }


 ereport(DEBUG2, (errmsg("received remote file \"%s\"", filename)));

 return 1;
}
