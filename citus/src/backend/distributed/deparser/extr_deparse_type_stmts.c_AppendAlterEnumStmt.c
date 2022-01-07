
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ newValNeighbor; scalar_t__ newValIsAfter; scalar_t__ newVal; scalar_t__ skipIfNewValExists; scalar_t__ oldVal; int typeName; } ;
typedef int StringInfo ;
typedef TYPE_1__ AlterEnumStmt ;


 scalar_t__ AlterEnumIsAddValue (TYPE_1__*) ;
 scalar_t__ AlterEnumIsRename (TYPE_1__*) ;
 int NameListToQuotedString (int ) ;
 int appendStringInfo (int ,char*,char*,...) ;
 int appendStringInfoString (int ,char*) ;
 char* quote_literal_cstr (scalar_t__) ;

__attribute__((used)) static void
AppendAlterEnumStmt(StringInfo buf, AlterEnumStmt *stmt)
{
 appendStringInfo(buf, "ALTER TYPE %s", NameListToQuotedString(stmt->typeName));

 if (AlterEnumIsRename(stmt))
 {

  appendStringInfo(buf, " RENAME VALUE %s TO %s;",
       quote_literal_cstr(stmt->oldVal),
       quote_literal_cstr(stmt->newVal));
 }
 else if (AlterEnumIsAddValue(stmt))
 {

  appendStringInfoString(buf, " ADD VALUE ");
  if (stmt->skipIfNewValExists)
  {
   appendStringInfoString(buf, "IF NOT EXISTS ");
  }
  appendStringInfoString(buf, quote_literal_cstr(stmt->newVal));

  if (stmt->newValNeighbor)
  {
   appendStringInfo(buf, " %s %s",
        stmt->newValIsAfter ? "AFTER" : "BEFORE",
        quote_literal_cstr(stmt->newValNeighbor));
  }

  appendStringInfoString(buf, ";");
 }
}
