
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int renameType; } ;
typedef TYPE_1__ RenameStmt ;


 char const* DeparseRenameAttributeStmt (TYPE_1__*) ;
 char const* DeparseRenameFunctionStmt (TYPE_1__*) ;
 char const* DeparseRenameTypeStmt (TYPE_1__*) ;
 int ERROR ;





 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const char *
DeparseRenameStmt(RenameStmt *stmt)
{
 switch (stmt->renameType)
 {
  case 128:
  {
   return DeparseRenameTypeStmt(stmt);
  }

  case 131:
  {
   return DeparseRenameAttributeStmt(stmt);
  }

  case 129:
  case 132:
  case 130:
  {
   return DeparseRenameFunctionStmt(stmt);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported rename statement for deparsing")));
  }
 }
}
