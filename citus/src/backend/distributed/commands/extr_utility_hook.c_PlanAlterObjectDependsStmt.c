
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectType; } ;
typedef int List ;
typedef TYPE_1__ AlterObjectDependsStmt ;


 int * NIL ;


 int * PlanAlterFunctionDependsStmt (TYPE_1__*,char const*) ;

__attribute__((used)) static List *
PlanAlterObjectDependsStmt(AlterObjectDependsStmt *stmt, const char *queryString)
{
 switch (stmt->objectType)
 {
  case 128:
  case 129:
  {
   return PlanAlterFunctionDependsStmt(stmt, queryString);
  }

  default:
  {
   return NIL;
  }
 }
}
