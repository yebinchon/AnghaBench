
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {int typeName; } ;
typedef int Oid ;
typedef int const ObjectAddress ;
typedef TYPE_1__ AlterEnumStmt ;


 int InvalidOid ;
 int LookupTypeNameOid (int *,int *,int) ;
 int ObjectAddressSet (int const,int ,int ) ;
 int TypeRelationId ;
 int * makeTypeNameFromNameList (int ) ;
 int const* palloc0 (int) ;

const ObjectAddress *
AlterEnumStmtObjectAddress(AlterEnumStmt *stmt, bool missing_ok)
{
 TypeName *typeName = ((void*)0);
 Oid typeOid = InvalidOid;
 ObjectAddress *address = ((void*)0);

 typeName = makeTypeNameFromNameList(stmt->typeName);
 typeOid = LookupTypeNameOid(((void*)0), typeName, missing_ok);
 address = palloc0(sizeof(ObjectAddress));
 ObjectAddressSet(*address, TypeRelationId, typeOid);

 return address;
}
