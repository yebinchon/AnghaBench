
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vals; int typeName; } ;
struct TYPE_5__ {int relname; int schemaname; } ;
typedef int StringInfo ;
typedef TYPE_1__ RangeVar ;
typedef TYPE_2__ CreateEnumStmt ;


 int AppendStringList (int ,int ) ;
 int appendStringInfo (int ,char*,...) ;
 TYPE_1__* makeRangeVarFromNameList (int ) ;
 char* quote_qualified_identifier (int ,int ) ;

__attribute__((used)) static void
AppendCreateEnumStmt(StringInfo str, CreateEnumStmt *stmt)
{
 RangeVar *typevar = ((void*)0);
 const char *identifier = ((void*)0);

 typevar = makeRangeVarFromNameList(stmt->typeName);


 identifier = quote_qualified_identifier(typevar->schemaname, typevar->relname);

 appendStringInfo(str, "CREATE TYPE %s AS ENUM (", identifier);
 AppendStringList(str, stmt->vals);
 appendStringInfo(str, ");");
}
