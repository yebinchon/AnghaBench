
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ behavior; int newname; int subname; TYPE_1__* relation; } ;
struct TYPE_4__ {int relname; int schemaname; } ;
typedef int StringInfo ;
typedef TYPE_2__ RenameStmt ;


 scalar_t__ DROP_CASCADE ;
 int appendStringInfo (int ,char*,int ,int ,int ) ;
 int appendStringInfoString (int ,char*) ;
 int quote_identifier (int ) ;
 int quote_qualified_identifier (int ,int ) ;

__attribute__((used)) static void
AppendRenameTypeAttributeStmt(StringInfo buf, RenameStmt *stmt)
{
 appendStringInfo(buf, "ALTER TYPE %s RENAME ATTRIBUTE %s TO %s",
      quote_qualified_identifier(stmt->relation->schemaname,
            stmt->relation->relname),
      quote_identifier(stmt->subname),
      quote_identifier(stmt->newname));

 if (stmt->behavior == DROP_CASCADE)
 {
  appendStringInfoString(buf, " CASCADE");
 }

 appendStringInfoString(buf, ";");
}
