
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectType; } ;
typedef int ObjectAddress ;
typedef TYPE_1__ AlterObjectDependsStmt ;


 int const* AlterFunctionDependsStmtObjectAddress (TYPE_1__*,int) ;
 int ERROR ;


 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const ObjectAddress *
AlterObjectDependsStmtObjectAddress(AlterObjectDependsStmt *stmt, bool missing_ok)
{
 switch (stmt->objectType)
 {
  case 128:
  case 129:
  {
   return AlterFunctionDependsStmtObjectAddress(stmt, missing_ok);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter depends on extension statement to "
           "get object address for")));
  }
 }
}
