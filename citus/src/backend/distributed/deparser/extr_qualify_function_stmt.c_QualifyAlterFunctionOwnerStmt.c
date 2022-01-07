
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectType; int object; } ;
typedef TYPE_1__ AlterOwnerStmt ;


 int AssertObjectTypeIsFunctional (int ) ;
 int ObjectWithArgs ;
 int QualifyFunction (int ,int ) ;
 int castNode (int ,int ) ;

void
QualifyAlterFunctionOwnerStmt(AlterOwnerStmt *stmt)
{
 AssertObjectTypeIsFunctional(stmt->objectType);

 QualifyFunction(castNode(ObjectWithArgs, stmt->object), stmt->objectType);
}
