
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int objectType; } ;
typedef int List ;
typedef TYPE_1__ AlterObjectSchemaStmt ;






 int * PlanAlterFunctionSchemaStmt (TYPE_1__*,char const*) ;
 int * PlanAlterTableSchemaStmt (TYPE_1__*,char const*) ;
 int * PlanAlterTypeSchemaStmt (TYPE_1__*,char const*) ;

List *
PlanAlterObjectSchemaStmt(AlterObjectSchemaStmt *stmt, const char *queryString)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   return PlanAlterTypeSchemaStmt(stmt, queryString);
  }

  case 129:
  case 131:
  case 130:
  {
   return PlanAlterFunctionSchemaStmt(stmt, queryString);
  }

  default:
  {

   break;
  }
 }






 return PlanAlterTableSchemaStmt(stmt, queryString);
}
