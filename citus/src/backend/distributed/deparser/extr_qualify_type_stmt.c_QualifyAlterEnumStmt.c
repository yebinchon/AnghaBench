
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * typeName; } ;
typedef int List ;
typedef TYPE_1__ AlterEnumStmt ;


 char* GetTypeNamespaceNameByNameList (int *) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;

void
QualifyAlterEnumStmt(AlterEnumStmt *stmt)
{
 List *names = stmt->typeName;

 if (list_length(names) == 1)
 {

  char *nspname = GetTypeNamespaceNameByNameList(names);
  names = list_make2(makeString(nspname), linitial(names));

  stmt->typeName = names;
 }
}
