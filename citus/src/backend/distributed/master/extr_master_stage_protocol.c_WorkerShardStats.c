
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int text ;
struct TYPE_6__ {int varattno; } ;
typedef TYPE_1__ Var ;
struct TYPE_7__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef int ShardPlacement ;
typedef int PGresult ;
typedef int Oid ;
typedef int MultiConnection ;


 int CStoreTable (int ) ;
 char DISTRIBUTE_BY_APPEND ;
 int ExecuteOptionalRemoteCommand (int *,int ,int **) ;
 int ForgetResults (int *) ;
 int * GetPlacementConnection (int,int *,int *) ;
 int PQclear (int *) ;
 int PQgetisnull (int *,int ,int const) ;
 char* PQgetvalue (int *,int ,int const) ;
 TYPE_1__* PartitionColumn (int ,int const) ;
 char PartitionMethod (int ) ;
 int SHARD_CSTORE_TABLE_SIZE_QUERY ;
 int SHARD_RANGE_QUERY ;
 int SHARD_TABLE_SIZE_QUERY ;
 int appendStringInfo (TYPE_2__*,int ,char*,...) ;
 int * cstring_to_text (char*) ;
 scalar_t__ errno ;
 char* get_attname (int ,int ,int) ;
 TYPE_2__* makeStringInfo () ;
 int pg_strtouint64 (char*,char**,int ) ;
 char* quote_literal_cstr (char*) ;

__attribute__((used)) static bool
WorkerShardStats(ShardPlacement *placement, Oid relationId, char *shardName,
     uint64 *shardSize, text **shardMinValue, text **shardMaxValue)
{
 char *quotedShardName = ((void*)0);
 bool cstoreTable = 0;
 StringInfo tableSizeQuery = makeStringInfo();

 const uint32 unusedTableId = 1;
 char partitionType = PartitionMethod(relationId);
 Var *partitionColumn = ((void*)0);
 char *partitionColumnName = ((void*)0);
 StringInfo partitionValueQuery = makeStringInfo();

 PGresult *queryResult = ((void*)0);
 const int minValueIndex = 0;
 const int maxValueIndex = 1;

 uint64 tableSize = 0;
 char *tableSizeString = ((void*)0);
 char *tableSizeStringEnd = ((void*)0);
 bool minValueIsNull = 0;
 bool maxValueIsNull = 0;

 int connectionFlags = 0;
 int executeCommand = 0;

 MultiConnection *connection = GetPlacementConnection(connectionFlags, placement,
               ((void*)0));

 *shardSize = 0;
 *shardMinValue = ((void*)0);
 *shardMaxValue = ((void*)0);

 quotedShardName = quote_literal_cstr(shardName);

 cstoreTable = CStoreTable(relationId);
 if (cstoreTable)
 {
  appendStringInfo(tableSizeQuery, SHARD_CSTORE_TABLE_SIZE_QUERY, quotedShardName);
 }
 else
 {
  appendStringInfo(tableSizeQuery, SHARD_TABLE_SIZE_QUERY, quotedShardName);
 }

 executeCommand = ExecuteOptionalRemoteCommand(connection, tableSizeQuery->data,
              &queryResult);
 if (executeCommand != 0)
 {
  return 0;
 }

 tableSizeString = PQgetvalue(queryResult, 0, 0);
 if (tableSizeString == ((void*)0))
 {
  PQclear(queryResult);
  ForgetResults(connection);
  return 0;
 }

 errno = 0;
 tableSize = pg_strtouint64(tableSizeString, &tableSizeStringEnd, 0);
 if (errno != 0 || (*tableSizeStringEnd) != '\0')
 {
  PQclear(queryResult);
  ForgetResults(connection);
  return 0;
 }

 *shardSize = tableSize;

 PQclear(queryResult);
 ForgetResults(connection);

 if (partitionType != DISTRIBUTE_BY_APPEND)
 {

  return 1;
 }


 partitionColumn = PartitionColumn(relationId, unusedTableId);
 partitionColumnName = get_attname(relationId, partitionColumn->varattno, 0);
 appendStringInfo(partitionValueQuery, SHARD_RANGE_QUERY,
      partitionColumnName, partitionColumnName, shardName);

 executeCommand = ExecuteOptionalRemoteCommand(connection, partitionValueQuery->data,
              &queryResult);
 if (executeCommand != 0)
 {
  return 0;
 }

 minValueIsNull = PQgetisnull(queryResult, 0, minValueIndex);
 maxValueIsNull = PQgetisnull(queryResult, 0, maxValueIndex);

 if (!minValueIsNull && !maxValueIsNull)
 {
  char *minValueResult = PQgetvalue(queryResult, 0, minValueIndex);
  char *maxValueResult = PQgetvalue(queryResult, 0, maxValueIndex);

  *shardMinValue = cstring_to_text(minValueResult);
  *shardMaxValue = cstring_to_text(maxValueResult);
 }

 PQclear(queryResult);
 ForgetResults(connection);

 return 1;
}
