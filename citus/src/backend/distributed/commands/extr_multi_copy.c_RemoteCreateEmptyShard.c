
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int PGresult ;


 int Assert (int) ;
 int CREATE_EMPTY_SHARD_QUERY ;
 int ERROR ;
 int * GetRemoteCommandResult (int ,int) ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int ,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReportConnectionError (int ,int ) ;
 int ReportResultError (int ,int *,int ) ;
 int SendRemoteCommand (int ,int ) ;
 int WARNING ;
 int appendStringInfo (TYPE_1__*,int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 TYPE_1__* makeStringInfo () ;
 int masterConnection ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static int64
RemoteCreateEmptyShard(char *relationName)
{
 int64 shardId = 0;
 PGresult *queryResult = ((void*)0);
 bool raiseInterrupts = 1;

 StringInfo createEmptyShardCommand = makeStringInfo();
 appendStringInfo(createEmptyShardCommand, CREATE_EMPTY_SHARD_QUERY, relationName);

 if (!SendRemoteCommand(masterConnection, createEmptyShardCommand->data))
 {
  ReportConnectionError(masterConnection, ERROR);
 }
 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 if (PQresultStatus(queryResult) == PGRES_TUPLES_OK)
 {
  char *shardIdString = PQgetvalue((PGresult *) queryResult, 0, 0);
  char *shardIdStringEnd = ((void*)0);
  shardId = strtoul(shardIdString, &shardIdStringEnd, 0);
 }
 else
 {
  ReportResultError(masterConnection, queryResult, WARNING);
  ereport(ERROR, (errmsg("could not create a new empty shard on the remote node")));
 }

 PQclear(queryResult);
 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 Assert(!queryResult);

 return shardId;
}
