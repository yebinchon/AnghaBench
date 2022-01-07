
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectType; int newowner; scalar_t__ object; } ;
typedef int StringInfo ;
typedef int List ;
typedef TYPE_1__ AlterOwnerStmt ;


 int Assert (int) ;
 int * NIL ;
 int NameListToQuotedString (int *) ;
 scalar_t__ OBJECT_TYPE ;
 int RoleSpecString (int ,int) ;
 int appendStringInfo (int ,char*,int ,int ) ;

__attribute__((used)) static void
AppendAlterTypeOwnerStmt(StringInfo buf, AlterOwnerStmt *stmt)
{
 List *names = NIL;

 Assert(stmt->objectType == OBJECT_TYPE);

 names = (List *) stmt->object;
 appendStringInfo(buf, "ALTER TYPE %s OWNER TO %s;", NameListToQuotedString(names),
      RoleSpecString(stmt->newowner, 1));
}
