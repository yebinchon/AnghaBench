
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; int renameType; } ;
typedef TYPE_1__ RenameStmt ;
typedef int ObjectAddress ;


 int const* FunctionToObjectAddress (int ,int ,int) ;
 int ObjectWithArgs ;
 int castNode (int ,int ) ;

const ObjectAddress *
RenameFunctionStmtObjectAddress(RenameStmt *stmt, bool missing_ok)
{
 return FunctionToObjectAddress(stmt->renameType,
           castNode(ObjectWithArgs, stmt->object), missing_ok);
}
