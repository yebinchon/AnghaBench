
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* schemaname; } ;
struct TYPE_4__ {scalar_t__ relkind; TYPE_3__* relation; } ;
typedef int List ;
typedef TYPE_1__ AlterTableStmt ;


 int Assert (int) ;
 char* GetTypeNamespaceNameByNameList (int *) ;
 int * MakeNameListFromRangeVar (TYPE_3__*) ;
 scalar_t__ OBJECT_TYPE ;

void
QualifyAlterTypeStmt(AlterTableStmt *stmt)
{
 Assert(stmt->relkind == OBJECT_TYPE);

 if (stmt->relation->schemaname == ((void*)0))
 {
  List *names = MakeNameListFromRangeVar(stmt->relation);
  char *nspname = GetTypeNamespaceNameByNameList(names);
  stmt->relation->schemaname = nspname;
 }
}
