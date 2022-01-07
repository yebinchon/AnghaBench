
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relkind; } ;
typedef int ObjectAddress ;
typedef TYPE_1__ AlterTableStmt ;


 int const* AlterTypeStmtObjectAddress (TYPE_1__*,int) ;
 int ERROR ;

 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const ObjectAddress *
AlterTableStmtObjectAddress(AlterTableStmt *stmt, bool missing_ok)
{
 switch (stmt->relkind)
 {
  case 128:
  {
   return AlterTypeStmtObjectAddress(stmt, missing_ok);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter statement to get object address for"
           )));
  }
 }
}
