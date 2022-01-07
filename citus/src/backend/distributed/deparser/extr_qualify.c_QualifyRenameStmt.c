
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int renameType; } ;
typedef TYPE_1__ RenameStmt ;






 int QualifyRenameAttributeStmt (TYPE_1__*) ;
 int QualifyRenameFunctionStmt (TYPE_1__*) ;
 int QualifyRenameTypeStmt (TYPE_1__*) ;

__attribute__((used)) static void
QualifyRenameStmt(RenameStmt *stmt)
{
 switch (stmt->renameType)
 {
  case 128:
  {
   QualifyRenameTypeStmt(stmt);
   return;
  }

  case 131:
  {
   QualifyRenameAttributeStmt(stmt);
   return;
  }

  case 130:
  case 129:
  {
   QualifyRenameFunctionStmt(stmt);
  }

  default:
  {

   break;
  }
 }
}
