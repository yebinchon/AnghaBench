
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectType; } ;
typedef TYPE_1__ AlterObjectDependsStmt ;


 char const* DeparseAlterFunctionDependsStmt (TYPE_1__*) ;
 int ERROR ;



 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const char *
DeparseAlterObjectDependsStmt(AlterObjectDependsStmt *stmt)
{
 switch (stmt->objectType)
 {
  case 128:
  case 130:
  case 129:
  {
   return DeparseAlterFunctionDependsStmt(stmt);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter depends statement for deparsing")));
  }
 }
}
