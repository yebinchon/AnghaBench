
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeName ;
typedef int Oid ;
typedef int List ;


 int LookupTypeNameOid (int *,int *,int) ;
 int TypeOidGetNamespaceOid (int ) ;
 char* get_namespace_name_or_temp (int ) ;
 int * makeTypeNameFromNameList (int *) ;

__attribute__((used)) static char *
GetTypeNamespaceNameByNameList(List *names)
{
 TypeName *typeName = makeTypeNameFromNameList(names);
 Oid typeOid = LookupTypeNameOid(((void*)0), typeName, 0);
 Oid namespaceOid = TypeOidGetNamespaceOid(typeOid);
 char *nspname = get_namespace_name_or_temp(namespaceOid);
 return nspname;
}
