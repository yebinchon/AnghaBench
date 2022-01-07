
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; int objectType; } ;
typedef int ObjectAddress ;
typedef TYPE_1__ AlterObjectDependsStmt ;


 int AssertObjectTypeIsFunctional (int ) ;
 int const* FunctionToObjectAddress (int ,int ,int) ;
 int ObjectWithArgs ;
 int castNode (int ,int ) ;

const ObjectAddress *
AlterFunctionDependsStmtObjectAddress(AlterObjectDependsStmt *stmt, bool missing_ok)
{
 AssertObjectTypeIsFunctional(stmt->objectType);

 return FunctionToObjectAddress(stmt->objectType,
           castNode(ObjectWithArgs, stmt->object), missing_ok);
}
