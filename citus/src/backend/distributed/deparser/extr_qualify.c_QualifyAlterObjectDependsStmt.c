
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectType; } ;
typedef TYPE_1__ AlterObjectDependsStmt ;




 int QualifyAlterFunctionDependsStmt (TYPE_1__*) ;

__attribute__((used)) static void
QualifyAlterObjectDependsStmt(AlterObjectDependsStmt *stmt)
{
 switch (stmt->objectType)
 {
  case 129:
  case 128:
  {
   QualifyAlterFunctionDependsStmt(stmt);
  }

  default:
  {
   return;
  }
 }
}
