
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_9__ {char* idxname; scalar_t__ indexParams; scalar_t__ indexIncludingParams; int * whereClause; int options; int accessMethod; TYPE_1__* relation; scalar_t__ if_not_exists; scalar_t__ concurrent; scalar_t__ unique; } ;
struct TYPE_8__ {char* relname; int schemaname; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int List ;
typedef TYPE_2__ IndexStmt ;


 int AppendShardIdToName (char**,int ) ;
 int AppendStorageParametersToString (int ,int ) ;
 scalar_t__ NIL ;
 int appendStringInfo (int ,char*,char*,...) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 TYPE_2__* copyObject (TYPE_2__*) ;
 int * deparse_context_for (char*,int ) ;
 int deparse_expression (int *,int *,int,int) ;
 int deparse_index_columns (int ,scalar_t__,int *) ;
 int quote_identifier (char*) ;
 int quote_qualified_identifier (int ,char*) ;
 TYPE_2__* transformIndexStmt (int ,TYPE_2__*,int *) ;

void
deparse_shard_index_statement(IndexStmt *origStmt, Oid distrelid, int64 shardid,
         StringInfo buffer)
{
 IndexStmt *indexStmt = copyObject(origStmt);
 char *relationName = indexStmt->relation->relname;
 char *indexName = indexStmt->idxname;
 List *deparseContext = ((void*)0);


 AppendShardIdToName(&relationName, shardid);
 AppendShardIdToName(&indexName, shardid);


 deparseContext = deparse_context_for(relationName, distrelid);
 indexStmt = transformIndexStmt(distrelid, indexStmt, ((void*)0));

 appendStringInfo(buffer, "CREATE %s INDEX %s %s %s ON %s USING %s ",
      (indexStmt->unique ? "UNIQUE" : ""),
      (indexStmt->concurrent ? "CONCURRENTLY" : ""),
      (indexStmt->if_not_exists ? "IF NOT EXISTS" : ""),
      quote_identifier(indexName),
      quote_qualified_identifier(indexStmt->relation->schemaname,
            relationName),
      indexStmt->accessMethod);


 appendStringInfoChar(buffer, '(');
 deparse_index_columns(buffer, indexStmt->indexParams, deparseContext);
 appendStringInfoString(buffer, ") ");


 if (indexStmt->indexIncludingParams != NIL)
 {
  appendStringInfoString(buffer, "INCLUDE (");
  deparse_index_columns(buffer, indexStmt->indexIncludingParams, deparseContext);
  appendStringInfoChar(buffer, ')');
 }

 AppendStorageParametersToString(buffer, indexStmt->options);

 if (indexStmt->whereClause != ((void*)0))
 {
  appendStringInfo(buffer, "WHERE %s", deparse_expression(indexStmt->whereClause,
                deparseContext, 0,
                0));
 }
}
