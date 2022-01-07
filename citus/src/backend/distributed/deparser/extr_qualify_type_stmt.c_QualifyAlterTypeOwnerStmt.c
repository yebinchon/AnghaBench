
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectType; int * object; } ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ AlterOwnerStmt ;


 int Assert (int) ;
 char* GetTypeNamespaceNameByNameList (int *) ;
 int * NIL ;
 scalar_t__ OBJECT_TYPE ;
 int linitial (int *) ;
 int list_length (int *) ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;

void
QualifyAlterTypeOwnerStmt(AlterOwnerStmt *stmt)
{
 List *names = NIL;

 Assert(stmt->objectType == OBJECT_TYPE);

 names = (List *) stmt->object;
 if (list_length(names) == 1)
 {

  char *nspname = GetTypeNamespaceNameByNameList(names);
  names = list_make2(makeString(nspname), linitial(names));
  stmt->object = (Node *) names;
 }
}
