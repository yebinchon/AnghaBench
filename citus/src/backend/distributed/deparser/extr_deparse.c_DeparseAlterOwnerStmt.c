
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectType; } ;
typedef TYPE_1__ AlterOwnerStmt ;


 char const* DeparseAlterFunctionOwnerStmt (TYPE_1__*) ;
 char const* DeparseAlterTypeOwnerStmt (TYPE_1__*) ;
 int ERROR ;




 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const char *
DeparseAlterOwnerStmt(AlterOwnerStmt *stmt)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   return DeparseAlterTypeOwnerStmt(stmt);
  }

  case 129:
  case 131:
  case 130:
  {
   return DeparseAlterFunctionOwnerStmt(stmt);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter owner statement for deparsing")));
  }
 }
}
