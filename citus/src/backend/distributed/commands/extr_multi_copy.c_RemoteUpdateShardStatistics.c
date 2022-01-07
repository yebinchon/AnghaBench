
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int PGresult ;


 int Assert (int) ;
 int ERROR ;
 int * GetRemoteCommandResult (int ,int) ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReportConnectionError (int ,int ) ;
 int SendRemoteCommand (int ,int ) ;
 int UPDATE_SHARD_STATISTICS_QUERY ;
 int appendStringInfo (TYPE_1__*,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 TYPE_1__* makeStringInfo () ;
 int masterConnection ;

__attribute__((used)) static void
RemoteUpdateShardStatistics(uint64 shardId)
{
 PGresult *queryResult = ((void*)0);
 bool raiseInterrupts = 1;

 StringInfo updateShardStatisticsCommand = makeStringInfo();
 appendStringInfo(updateShardStatisticsCommand, UPDATE_SHARD_STATISTICS_QUERY,
      shardId);

 if (!SendRemoteCommand(masterConnection, updateShardStatisticsCommand->data))
 {
  ReportConnectionError(masterConnection, ERROR);
 }
 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 if (PQresultStatus(queryResult) != PGRES_TUPLES_OK)
 {
  ereport(ERROR, (errmsg("could not update shard statistics")));
 }

 PQclear(queryResult);
 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 Assert(!queryResult);
}
