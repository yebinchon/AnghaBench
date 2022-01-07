
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectType; } ;
typedef TYPE_1__ AlterObjectSchemaStmt ;





 int QualifyAlterFunctionSchemaStmt (TYPE_1__*) ;
 int QualifyAlterTypeSchemaStmt (TYPE_1__*) ;

__attribute__((used)) static void
QualifyAlterObjectSchemaStmt(AlterObjectSchemaStmt *stmt)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   QualifyAlterTypeSchemaStmt(stmt);
   return;
  }

  case 130:
  case 129:
  {
   QualifyAlterFunctionSchemaStmt(stmt);
  }

  default:
  {

   break;
  }
 }
}
