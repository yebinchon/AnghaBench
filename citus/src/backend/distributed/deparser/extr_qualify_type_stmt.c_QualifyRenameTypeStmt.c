
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ renameType; int * object; } ;
typedef TYPE_1__ RenameStmt ;
typedef int Node ;
typedef int List ;


 int Assert (int) ;
 char* GetTypeNamespaceNameByNameList (int *) ;
 scalar_t__ OBJECT_TYPE ;
 int linitial (int *) ;
 int list_length (int *) ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;

void
QualifyRenameTypeStmt(RenameStmt *stmt)
{
 List *names = (List *) stmt->object;

 Assert(stmt->renameType == OBJECT_TYPE);

 if (list_length(names) == 1)
 {

  char *nspname = GetTypeNamespaceNameByNameList(names);
  names = list_make2(makeString(nspname), linitial(names));

  stmt->object = (Node *) names;
 }
}
