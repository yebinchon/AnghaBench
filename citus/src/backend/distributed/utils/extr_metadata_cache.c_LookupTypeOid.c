
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Value ;
typedef int TypeName ;
typedef int * Type ;
struct TYPE_2__ {int oid; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleGetOid (int *) ;
 int InvalidOid ;
 int * LookupTypeName (int *,int *,int *,int) ;
 int ReleaseSysCache (int *) ;
 int * list_make2 (int *,int *) ;
 int * makeString (char*) ;
 int * makeTypeNameFromNameList (int *) ;

__attribute__((used)) static Oid
LookupTypeOid(char *typeNameString)
{
 Value *schemaName = makeString("pg_catalog");
 Value *typeName = makeString(typeNameString);
 List *qualifiedName = list_make2(schemaName, typeName);
 TypeName *enumTypeName = makeTypeNameFromNameList(qualifiedName);

 Oid nodeRoleTypId;


 Type tup = LookupTypeName(((void*)0), enumTypeName, ((void*)0), 0);
 if (tup == ((void*)0))
 {
  return InvalidOid;
 }




 nodeRoleTypId = HeapTupleGetOid(tup);

 ReleaseSysCache(tup);

 return nodeRoleTypId;
}
