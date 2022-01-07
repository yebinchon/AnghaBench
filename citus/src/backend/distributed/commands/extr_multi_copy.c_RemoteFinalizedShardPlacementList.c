
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_7__ {char* nodeName; int nodeId; int nodePort; int placementId; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ ShardPlacement ;
typedef int PGresult ;
typedef int List ;


 int Assert (int) ;
 int ERROR ;
 int FINALIZED_SHARD_PLACEMENTS_QUERY ;
 int * GetRemoteCommandResult (int ,int) ;
 int * NIL ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReportConnectionError (int ,int ) ;
 int SendRemoteCommand (int ,int ) ;
 int appendStringInfo (TYPE_1__*,int ,int ) ;
 int atoi (char*) ;
 int atoll (char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int * lappend (int *,TYPE_2__*) ;
 TYPE_1__* makeStringInfo () ;
 int masterConnection ;
 scalar_t__ palloc0 (int) ;
 char* pstrdup (char*) ;

__attribute__((used)) static List *
RemoteFinalizedShardPlacementList(uint64 shardId)
{
 List *finalizedPlacementList = NIL;
 PGresult *queryResult = ((void*)0);
 bool raiseInterrupts = 1;

 StringInfo shardPlacementsCommand = makeStringInfo();
 appendStringInfo(shardPlacementsCommand, FINALIZED_SHARD_PLACEMENTS_QUERY, shardId);

 if (!SendRemoteCommand(masterConnection, shardPlacementsCommand->data))
 {
  ReportConnectionError(masterConnection, ERROR);
 }
 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 if (PQresultStatus(queryResult) == PGRES_TUPLES_OK)
 {
  int rowCount = PQntuples(queryResult);
  int rowIndex = 0;

  for (rowIndex = 0; rowIndex < rowCount; rowIndex++)
  {
   char *placementIdString = PQgetvalue(queryResult, rowIndex, 0);
   char *nodeName = pstrdup(PQgetvalue(queryResult, rowIndex, 1));
   char *nodePortString = pstrdup(PQgetvalue(queryResult, rowIndex, 2));
   uint32 nodePort = atoi(nodePortString);
   uint64 placementId = atoll(placementIdString);

   ShardPlacement *shardPlacement =
    (ShardPlacement *) palloc0(sizeof(ShardPlacement));

   shardPlacement->placementId = placementId;
   shardPlacement->nodeName = nodeName;
   shardPlacement->nodePort = nodePort;






   shardPlacement->nodeId = -1;

   finalizedPlacementList = lappend(finalizedPlacementList, shardPlacement);
  }
 }
 else
 {
  ereport(ERROR, (errmsg("could not get shard placements from the master node")));
 }

 PQclear(queryResult);
 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 Assert(!queryResult);

 return finalizedPlacementList;
}
