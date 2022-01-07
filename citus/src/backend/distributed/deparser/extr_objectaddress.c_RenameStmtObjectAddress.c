
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int renameType; } ;
typedef TYPE_1__ RenameStmt ;
typedef int ObjectAddress ;


 int ERROR ;





 int const* RenameAttributeStmtObjectAddress (TYPE_1__*,int) ;
 int const* RenameFunctionStmtObjectAddress (TYPE_1__*,int) ;
 int const* RenameTypeStmtObjectAddress (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const ObjectAddress *
RenameStmtObjectAddress(RenameStmt *stmt, bool missing_ok)
{
 switch (stmt->renameType)
 {
  case 128:
  {
   return RenameTypeStmtObjectAddress(stmt, missing_ok);
  }

  case 131:
  {
   return RenameAttributeStmtObjectAddress(stmt, missing_ok);
  }

  case 129:
  case 132:
  case 130:
  {
   return RenameFunctionStmtObjectAddress(stmt, missing_ok);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported rename statement to get object address "
           "for")));
  }
 }
}
