
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int role; } ;
struct TYPE_6__ {char const* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Node ;
typedef TYPE_2__ AlterRoleStmt ;


 char* DeparseTreeNode (int *) ;
 char* RoleSpecString (int ,int) ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_literal_cstr (char const*) ;

__attribute__((used)) static const char *
CreateAlterRoleIfExistsCommand(AlterRoleStmt *stmt)
{
 StringInfoData alterRoleQueryBuffer = { 0 };
 const char *roleName = RoleSpecString(stmt->role, 0);
 const char *alterRoleQuery = DeparseTreeNode((Node *) stmt);

 initStringInfo(&alterRoleQueryBuffer);
 appendStringInfo(&alterRoleQueryBuffer,
      "SELECT alter_role_if_exists(%s, %s)",
      quote_literal_cstr(roleName),
      quote_literal_cstr(alterRoleQuery));

 return alterRoleQueryBuffer.data;
}
