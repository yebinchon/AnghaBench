
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* relname; char* schemaname; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ RangeVar ;
typedef int PGresult ;


 int Assert (int) ;
 int ERROR ;
 int * GetRemoteCommandResult (int ,int) ;
 int PARTITION_METHOD_QUERY ;
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
 int errmsg (char*,...) ;
 TYPE_1__* makeStringInfo () ;
 int masterConnection ;
 char* quote_qualified_identifier (char*,char*) ;

__attribute__((used)) static char
MasterPartitionMethod(RangeVar *relation)
{
 char partitionMethod = '\0';
 PGresult *queryResult = ((void*)0);
 bool raiseInterrupts = 1;

 char *relationName = relation->relname;
 char *schemaName = relation->schemaname;
 char *qualifiedName = quote_qualified_identifier(schemaName, relationName);

 StringInfo partitionMethodCommand = makeStringInfo();
 appendStringInfo(partitionMethodCommand, PARTITION_METHOD_QUERY, qualifiedName);

 if (!SendRemoteCommand(masterConnection, partitionMethodCommand->data))
 {
  ReportConnectionError(masterConnection, ERROR);
 }
 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 if (PQresultStatus(queryResult) == PGRES_TUPLES_OK)
 {
  char *partitionMethodString = PQgetvalue((PGresult *) queryResult, 0, 0);
  if (partitionMethodString == ((void*)0) || (*partitionMethodString) == '\0')
  {
   ereport(ERROR, (errmsg("could not find a partition method for the "
           "table %s", relationName)));
  }

  partitionMethod = partitionMethodString[0];
 }
 else
 {
  ReportResultError(masterConnection, queryResult, WARNING);
  ereport(ERROR, (errmsg("could not get the partition method of the "
          "distributed table")));
 }

 PQclear(queryResult);

 queryResult = GetRemoteCommandResult(masterConnection, raiseInterrupts);
 Assert(!queryResult);

 return partitionMethod;
}
