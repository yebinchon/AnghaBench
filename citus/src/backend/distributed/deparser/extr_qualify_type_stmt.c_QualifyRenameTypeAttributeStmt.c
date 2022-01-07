
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ renameType; scalar_t__ relationType; TYPE_1__* relation; } ;
struct TYPE_4__ {char* schemaname; int relname; } ;
typedef TYPE_2__ RenameStmt ;
typedef int List ;


 int Assert (int) ;
 char* GetTypeNamespaceNameByNameList (int *) ;
 scalar_t__ OBJECT_ATTRIBUTE ;
 scalar_t__ OBJECT_TYPE ;
 int * list_make1 (int ) ;
 int makeString (int ) ;

void
QualifyRenameTypeAttributeStmt(RenameStmt *stmt)
{
 Assert(stmt->renameType == OBJECT_ATTRIBUTE);
 Assert(stmt->relationType == OBJECT_TYPE);

 if (stmt->relation->schemaname == ((void*)0))
 {
  List *names = list_make1(makeString(stmt->relation->relname));
  char *nspname = GetTypeNamespaceNameByNameList(names);
  stmt->relation->schemaname = nspname;
 }
}
