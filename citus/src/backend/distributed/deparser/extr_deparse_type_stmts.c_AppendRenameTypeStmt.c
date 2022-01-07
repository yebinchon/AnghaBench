
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int newname; scalar_t__ object; } ;
typedef int StringInfo ;
typedef TYPE_1__ RenameStmt ;
typedef int List ;


 int NameListToQuotedString (int *) ;
 int appendStringInfo (int ,char*,int ,int ) ;
 int quote_identifier (int ) ;

__attribute__((used)) static void
AppendRenameTypeStmt(StringInfo buf, RenameStmt *stmt)
{
 List *names = (List *) stmt->object;

 appendStringInfo(buf, "ALTER TYPE %s RENAME TO %s;", NameListToQuotedString(names),
      quote_identifier(stmt->newname));
}
