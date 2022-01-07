
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_6__ {char* workerName; int workerPort; } ;
typedef TYPE_1__ WorkerNode ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_2__* StringInfo ;
typedef int PGresult ;
typedef int Oid ;
typedef int MultiConnection ;
typedef int List ;


 int ClearResults (int *,int) ;
 int ERRCODE_CONNECTION_FAILURE ;
 int ERROR ;
 int ExecuteOptionalRemoteCommand (int *,char*,int **) ;
 TYPE_2__* GenerateSizeQueryOnMultiplePlacements (int ,int *,char*) ;
 int * GetNodeConnection (int ,char*,int ) ;
 int * NIL ;
 int PQclear (int *) ;
 int * ReadFirstColumnAsText (int *) ;
 int * ShardIntervalsOnWorkerGroup (TYPE_1__*,int ) ;
 int atol (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ linitial (int *) ;

__attribute__((used)) static uint64
DistributedTableSizeOnWorker(WorkerNode *workerNode, Oid relationId, char *sizeQuery)
{
 StringInfo tableSizeQuery = ((void*)0);
 StringInfo tableSizeStringInfo = ((void*)0);
 char *workerNodeName = workerNode->workerName;
 uint32 workerNodePort = workerNode->workerPort;
 char *tableSizeString;
 uint64 tableSize = 0;
 MultiConnection *connection = ((void*)0);
 uint32 connectionFlag = 0;
 PGresult *result = ((void*)0);
 int queryResult = 0;
 List *sizeList = NIL;
 bool raiseErrors = 1;

 List *shardIntervalsOnNode = ShardIntervalsOnWorkerGroup(workerNode, relationId);

 tableSizeQuery = GenerateSizeQueryOnMultiplePlacements(relationId,
                 shardIntervalsOnNode,
                 sizeQuery);

 connection = GetNodeConnection(connectionFlag, workerNodeName, workerNodePort);
 queryResult = ExecuteOptionalRemoteCommand(connection, tableSizeQuery->data, &result);

 if (queryResult != 0)
 {
  ereport(ERROR, (errcode(ERRCODE_CONNECTION_FAILURE),
      errmsg("cannot get the size because of a connection error")));
 }

 sizeList = ReadFirstColumnAsText(result);
 tableSizeStringInfo = (StringInfo) linitial(sizeList);
 tableSizeString = tableSizeStringInfo->data;
 tableSize = atol(tableSizeString);

 PQclear(result);
 ClearResults(connection, raiseErrors);

 return tableSize;
}
