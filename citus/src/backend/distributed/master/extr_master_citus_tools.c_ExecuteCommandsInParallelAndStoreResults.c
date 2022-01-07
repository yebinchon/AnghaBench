
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int pgConn; } ;
struct TYPE_17__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ MultiConnection ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ CONNECTION_OK ;
 int CloseConnection (TYPE_2__*) ;
 int FORCE_NEW_CONNECTION ;
 int FinishConnectionEstablishment (TYPE_2__*) ;
 int GetConnectionStatusAndResult (TYPE_2__*,int*,TYPE_1__*) ;
 scalar_t__ PQstatus (int ) ;
 long RemoteTaskCheckInterval ;
 int SendRemoteCommand (TYPE_2__*,char*) ;
 TYPE_2__* StartNodeConnection (int,char*,int) ;
 int StoreErrorMessage (TYPE_2__*,TYPE_1__*) ;
 int appendStringInfo (TYPE_1__*,char*,char*,int) ;
 TYPE_2__** palloc0 (int) ;
 int pfree (TYPE_2__**) ;
 int pg_usleep (long) ;

__attribute__((used)) static void
ExecuteCommandsInParallelAndStoreResults(StringInfo *nodeNameArray, int *nodePortArray,
           StringInfo *commandStringArray,
           bool *statusArray, StringInfo *resultStringArray,
           int commmandCount)
{
 int commandIndex = 0;
 MultiConnection **connectionArray =
  palloc0(commmandCount * sizeof(MultiConnection *));
 int finishedCount = 0;


 for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
 {
  char *nodeName = nodeNameArray[commandIndex]->data;
  int nodePort = nodePortArray[commandIndex];
  int connectionFlags = FORCE_NEW_CONNECTION;
  connectionArray[commandIndex] =
   StartNodeConnection(connectionFlags, nodeName, nodePort);
 }


 for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
 {
  MultiConnection *connection = connectionArray[commandIndex];
  StringInfo queryResultString = resultStringArray[commandIndex];
  char *nodeName = nodeNameArray[commandIndex]->data;
  int nodePort = nodePortArray[commandIndex];

  FinishConnectionEstablishment(connection);

  if (PQstatus(connection->pgConn) != CONNECTION_OK)
  {
   appendStringInfo(queryResultString, "failed to connect to %s:%d", nodeName,
        (int) nodePort);
   statusArray[commandIndex] = 0;
   connectionArray[commandIndex] = ((void*)0);
   finishedCount++;
  }
  else
  {
   statusArray[commandIndex] = 1;
  }
 }


 for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
 {
  int querySent = 0;
  MultiConnection *connection = connectionArray[commandIndex];
  char *queryString = commandStringArray[commandIndex]->data;
  StringInfo queryResultString = resultStringArray[commandIndex];





  if (connection == ((void*)0))
  {
   continue;
  }

  querySent = SendRemoteCommand(connection, queryString);
  if (querySent == 0)
  {
   StoreErrorMessage(connection, queryResultString);
   statusArray[commandIndex] = 0;
   CloseConnection(connection);
   connectionArray[commandIndex] = ((void*)0);
   finishedCount++;
  }
 }


 while (finishedCount < commmandCount)
 {
  for (commandIndex = 0; commandIndex < commmandCount; commandIndex++)
  {
   MultiConnection *connection = connectionArray[commandIndex];
   StringInfo queryResultString = resultStringArray[commandIndex];
   bool success = 0;
   bool queryFinished = 0;

   if (connection == ((void*)0))
   {
    continue;
   }

   queryFinished = GetConnectionStatusAndResult(connection, &success,
               queryResultString);

   if (queryFinished)
   {
    finishedCount++;
    statusArray[commandIndex] = success;
    connectionArray[commandIndex] = ((void*)0);
    CloseConnection(connection);
   }
  }

  CHECK_FOR_INTERRUPTS();

  if (finishedCount < commmandCount)
  {
   long sleepIntervalPerCycle = RemoteTaskCheckInterval * 1000L;
   pg_usleep(sleepIntervalPerCycle);
  }
 }

 pfree(connectionArray);
}
