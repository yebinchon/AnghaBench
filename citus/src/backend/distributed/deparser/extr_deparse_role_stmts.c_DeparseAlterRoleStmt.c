
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef int AlterRoleStmt ;


 int AppendAlterRoleStmt (TYPE_1__*,int *) ;
 int initStringInfo (TYPE_1__*) ;

const char *
DeparseAlterRoleStmt(AlterRoleStmt *stmt)
{
 StringInfoData buf = { 0 };
 initStringInfo(&buf);

 AppendAlterRoleStmt(&buf, stmt);

 return buf.data;
}
