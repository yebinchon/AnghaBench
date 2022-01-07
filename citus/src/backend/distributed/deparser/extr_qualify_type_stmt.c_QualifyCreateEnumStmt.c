
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typeName; } ;
typedef int Oid ;
typedef TYPE_1__ CreateEnumStmt ;


 int QualifiedNameGetCreationNamespace (int ,char**) ;
 int get_namespace_name (int ) ;
 int linitial (int ) ;
 int list_length (int ) ;
 int list_make2 (int ,int ) ;
 int makeString (int ) ;

void
QualifyCreateEnumStmt(CreateEnumStmt *stmt)
{
 if (list_length(stmt->typeName) == 1)
 {
  char *objname = ((void*)0);
  Oid creationSchema = QualifiedNameGetCreationNamespace(stmt->typeName, &objname);
  stmt->typeName = list_make2(makeString(get_namespace_name(creationSchema)),
         linitial(stmt->typeName));
 }
}
