
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectType; int newschema; scalar_t__ object; } ;
typedef int StringInfo ;
typedef int List ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int Assert (int) ;
 int * NIL ;
 int NameListToQuotedString (int *) ;
 scalar_t__ OBJECT_TYPE ;
 int appendStringInfo (int ,char*,int ,int ) ;
 int quote_identifier (int ) ;

__attribute__((used)) static void
AppendAlterTypeSchemaStmt(StringInfo buf, AlterObjectSchemaStmt *stmt)
{
 List *names = NIL;

 Assert(stmt->objectType == OBJECT_TYPE);

 names = (List *) stmt->object;
 appendStringInfo(buf, "ALTER TYPE %s SET SCHEMA %s;", NameListToQuotedString(names),
      quote_identifier(stmt->newschema));
}
