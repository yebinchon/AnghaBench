
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int coldeflist; TYPE_1__* typevar; } ;
struct TYPE_4__ {int relname; int schemaname; } ;
typedef int StringInfo ;
typedef TYPE_2__ CompositeTypeStmt ;


 int AppendColumnDefList (int ,int ) ;
 int appendStringInfo (int ,char*,...) ;
 char* quote_qualified_identifier (int ,int ) ;

__attribute__((used)) static void
AppendCompositeTypeStmt(StringInfo str, CompositeTypeStmt *stmt)
{
 const char *identifier = quote_qualified_identifier(stmt->typevar->schemaname,
              stmt->typevar->relname);
 appendStringInfo(str, "CREATE TYPE %s AS (", identifier);
 AppendColumnDefList(str, stmt->coldeflist);
 appendStringInfo(str, ");");
}
