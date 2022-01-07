
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ relkind; } ;
struct TYPE_7__ {char const* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ AlterTableStmt ;


 int AppendAlterTypeStmt (TYPE_1__*,TYPE_2__*) ;
 int Assert (int) ;
 scalar_t__ OBJECT_TYPE ;
 int initStringInfo (TYPE_1__*) ;

const char *
DeparseAlterTypeStmt(AlterTableStmt *stmt)
{
 StringInfoData str = { 0 };
 initStringInfo(&str);

 Assert(stmt->relkind == OBJECT_TYPE);

 AppendAlterTypeStmt(&str, stmt);

 return str.data;
}
