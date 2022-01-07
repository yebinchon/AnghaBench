
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectType; } ;
typedef int List ;
typedef TYPE_1__ AlterOwnerStmt ;


 int * NIL ;




 int * PlanAlterFunctionOwnerStmt (TYPE_1__*,char const*) ;
 int * PlanAlterTypeOwnerStmt (TYPE_1__*,char const*) ;

__attribute__((used)) static List *
PlanAlterOwnerStmt(AlterOwnerStmt *stmt, const char *queryString)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   return PlanAlterTypeOwnerStmt(stmt, queryString);
  }

  case 129:
  case 131:
  case 130:
  {
   return PlanAlterFunctionOwnerStmt(stmt, queryString);
  }

  default:
  {

   return NIL;
  }
 }
}
