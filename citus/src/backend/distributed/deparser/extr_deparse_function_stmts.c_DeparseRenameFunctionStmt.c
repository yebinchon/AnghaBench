
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int renameType; } ;
struct TYPE_7__ {char const* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ RenameStmt ;


 int AppendRenameFunctionStmt (TYPE_1__*,TYPE_2__*) ;
 int AssertObjectTypeIsFunctional (int ) ;
 int initStringInfo (TYPE_1__*) ;

const char *
DeparseRenameFunctionStmt(RenameStmt *stmt)
{
 StringInfoData str = { 0 };
 initStringInfo(&str);

 AssertObjectTypeIsFunctional(stmt->renameType);

 AppendRenameFunctionStmt(&str, stmt);

 return str.data;
}
