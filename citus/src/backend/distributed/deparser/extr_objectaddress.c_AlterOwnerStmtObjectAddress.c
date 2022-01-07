
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectType; } ;
typedef int ObjectAddress ;
typedef TYPE_1__ AlterOwnerStmt ;


 int const* AlterFunctionOwnerObjectAddress (TYPE_1__*,int) ;
 int const* AlterTypeOwnerObjectAddress (TYPE_1__*,int) ;
 int ERROR ;




 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const ObjectAddress *
AlterOwnerStmtObjectAddress(AlterOwnerStmt *stmt, bool missing_ok)
{
 switch (stmt->objectType)
 {
  case 128:
  {
   return AlterTypeOwnerObjectAddress(stmt, missing_ok);
  }

  case 129:
  case 131:
  case 130:
  {
   return AlterFunctionOwnerObjectAddress(stmt, missing_ok);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter owner statement to get object "
           "address for")));
  }
 }
}
