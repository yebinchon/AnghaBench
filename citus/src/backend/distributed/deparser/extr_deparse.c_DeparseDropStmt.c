
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int removeType; } ;
typedef TYPE_1__ DropStmt ;


 char const* DeparseDropFunctionStmt (TYPE_1__*) ;
 char const* DeparseDropTypeStmt (TYPE_1__*) ;
 int ERROR ;




 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const char *
DeparseDropStmt(DropStmt *stmt)
{
 switch (stmt->removeType)
 {
  case 128:
  {
   return DeparseDropTypeStmt(stmt);
  }

  case 129:
  case 131:
  case 130:
  {
   return DeparseDropFunctionStmt(stmt);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported drop statement for deparsing")));
  }
 }
}
