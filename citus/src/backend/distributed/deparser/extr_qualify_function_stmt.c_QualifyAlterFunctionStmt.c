
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objtype; int func; } ;
typedef TYPE_1__ AlterFunctionStmt ;


 int AssertObjectTypeIsFunctional (int ) ;
 int QualifyFunction (int ,int ) ;

void
QualifyAlterFunctionStmt(AlterFunctionStmt *stmt)
{
 AssertObjectTypeIsFunctional(stmt->objtype);

 QualifyFunction(stmt->func, stmt->objtype);
}
