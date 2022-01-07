
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectType; } ;
typedef TYPE_1__ AlterObjectSchemaStmt ;






 int ProcessAlterFunctionSchemaStmt (TYPE_1__*,char const*) ;
 int ProcessAlterTypeSchemaStmt (TYPE_1__*,char const*) ;

void
ProcessAlterObjectSchemaStmt(AlterObjectSchemaStmt *stmt, const char *queryString)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   ProcessAlterTypeSchemaStmt(stmt, queryString);
   return;
  }

  case 129:
  case 131:
  case 130:
  {
   ProcessAlterFunctionSchemaStmt(stmt, queryString);
   return;
  }

  default:
  {

   return;
  }
 }
}
