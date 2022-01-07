
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relkind; } ;
typedef TYPE_1__ AlterTableStmt ;


 char const* DeparseAlterTypeStmt (TYPE_1__*) ;
 int ERROR ;

 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const char *
DeparseAlterTableStmt(AlterTableStmt *stmt)
{
 switch (stmt->relkind)
 {
  case 128:
  {
   return DeparseAlterTypeStmt(stmt);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter statement for deparsing")));
  }
 }
}
