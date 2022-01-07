
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectType; } ;
typedef TYPE_1__ AlterOwnerStmt ;





 int QualifyAlterFunctionOwnerStmt (TYPE_1__*) ;
 int QualifyAlterTypeOwnerStmt (TYPE_1__*) ;

__attribute__((used)) static void
QualifyAlterOwnerStmt(AlterOwnerStmt *stmt)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   QualifyAlterTypeOwnerStmt(stmt);
   return;
  }

  case 130:
  case 129:
  {
   QualifyAlterFunctionOwnerStmt(stmt);
  }

  default:
  {
   return;
  }
 }
}
