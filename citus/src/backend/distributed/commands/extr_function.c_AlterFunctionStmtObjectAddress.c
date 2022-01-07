
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int func; int objtype; } ;
typedef int ObjectAddress ;
typedef TYPE_1__ AlterFunctionStmt ;


 int const* FunctionToObjectAddress (int ,int ,int) ;

const ObjectAddress *
AlterFunctionStmtObjectAddress(AlterFunctionStmt *stmt, bool missing_ok)
{
 return FunctionToObjectAddress(stmt->objtype, stmt->func, missing_ok);
}
