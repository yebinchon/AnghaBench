
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef int AlterFunctionStmt ;


 int AppendAlterFunctionStmt (TYPE_1__*,int *) ;
 int initStringInfo (TYPE_1__*) ;

const char *
DeparseAlterFunctionStmt(AlterFunctionStmt *stmt)
{
 StringInfoData str = { 0 };
 initStringInfo(&str);

 AppendAlterFunctionStmt(&str, stmt);

 return str.data;
}
