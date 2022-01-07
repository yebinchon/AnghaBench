
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectType; } ;
typedef int ObjectAddress ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int const* AlterFunctionSchemaStmtObjectAddress (TYPE_1__*,int) ;
 int const* AlterTypeSchemaStmtObjectAddress (TYPE_1__*,int) ;
 int ERROR ;




 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const ObjectAddress *
AlterObjectSchemaStmtObjectAddress(AlterObjectSchemaStmt *stmt, bool missing_ok)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   return AlterTypeSchemaStmtObjectAddress(stmt, missing_ok);
  }

  case 129:
  case 131:
  case 130:
  {
   return AlterFunctionSchemaStmtObjectAddress(stmt, missing_ok);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter schema statement to get object "
           "address for")));
  }
 }
}
