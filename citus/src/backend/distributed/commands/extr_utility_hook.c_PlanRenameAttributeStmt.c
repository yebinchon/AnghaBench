
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ renameType; int relationType; } ;
typedef TYPE_1__ RenameStmt ;
typedef int List ;


 int Assert (int) ;
 int * NIL ;
 scalar_t__ OBJECT_ATTRIBUTE ;

 int * PlanRenameTypeAttributeStmt (TYPE_1__*,char const*) ;

__attribute__((used)) static List *
PlanRenameAttributeStmt(RenameStmt *stmt, const char *queryString)
{
 Assert(stmt->renameType == OBJECT_ATTRIBUTE);

 switch (stmt->relationType)
 {
  case 128:
  {
   return PlanRenameTypeAttributeStmt(stmt, queryString);
  }

  default:
  {

   return NIL;
  }
 }
}
