
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_7__ {int kind; scalar_t__ options; int name; TYPE_1__* relation; scalar_t__ concurrent; } ;
struct TYPE_6__ {char* relname; int schemaname; } ;
typedef int StringInfo ;
typedef TYPE_2__ ReindexStmt ;
typedef int Oid ;


 int AppendShardIdToName (char**,int ) ;
 scalar_t__ REINDEXOPT_VERBOSE ;





 int appendStringInfo (int ,char*,char const*,int ) ;
 int appendStringInfoString (int ,char*) ;
 TYPE_2__* copyObject (TYPE_2__*) ;
 int quote_identifier (int ) ;
 int quote_qualified_identifier (int ,char*) ;

void
deparse_shard_reindex_statement(ReindexStmt *origStmt, Oid distrelid, int64 shardid,
        StringInfo buffer)
{
 ReindexStmt *reindexStmt = copyObject(origStmt);
 char *relationName = ((void*)0);



 const char *concurrentlyString = "";



 if (reindexStmt->kind == 131 ||
  reindexStmt->kind == 128)
 {
  relationName = reindexStmt->relation->relname;


  AppendShardIdToName(&relationName, shardid);
 }

 appendStringInfoString(buffer, "REINDEX ");

 if (reindexStmt->options == REINDEXOPT_VERBOSE)
 {
  appendStringInfoString(buffer, "(VERBOSE) ");
 }

 switch (reindexStmt->kind)
 {
  case 131:
  {
   appendStringInfo(buffer, "INDEX %s%s", concurrentlyString,
        quote_qualified_identifier(reindexStmt->relation->schemaname,
              relationName));
   break;
  }

  case 128:
  {
   appendStringInfo(buffer, "TABLE %s%s", concurrentlyString,
        quote_qualified_identifier(reindexStmt->relation->schemaname,
              relationName));
   break;
  }

  case 130:
  {
   appendStringInfo(buffer, "SCHEMA %s%s", concurrentlyString,
        quote_identifier(reindexStmt->name));
   break;
  }

  case 129:
  {
   appendStringInfo(buffer, "SYSTEM %s%s", concurrentlyString,
        quote_identifier(reindexStmt->name));
   break;
  }

  case 132:
  {
   appendStringInfo(buffer, "DATABASE %s%s", concurrentlyString,
        quote_identifier(reindexStmt->name));
   break;
  }
 }
}
