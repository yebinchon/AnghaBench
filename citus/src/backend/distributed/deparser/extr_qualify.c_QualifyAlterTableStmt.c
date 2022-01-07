
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relkind; } ;
typedef TYPE_1__ AlterTableStmt ;



 int QualifyAlterTypeStmt (TYPE_1__*) ;

__attribute__((used)) static void
QualifyAlterTableStmt(AlterTableStmt *stmt)
{
 switch (stmt->relkind)
 {
  case 128:
  {
   QualifyAlterTypeStmt(stmt);
   return;
  }

  default:
  {

   break;
  }
 }
}
