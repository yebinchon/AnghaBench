
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {scalar_t__ renameType; scalar_t__ object; } ;
typedef TYPE_1__ RenameStmt ;
typedef int Oid ;
typedef int const ObjectAddress ;
typedef int List ;


 int Assert (int) ;
 int InvalidOid ;
 int LookupTypeNameOid (int *,int *,int) ;
 scalar_t__ OBJECT_TYPE ;
 int ObjectAddressSet (int const,int ,int ) ;
 int TypeRelationId ;
 int * makeTypeNameFromNameList (int *) ;
 int const* palloc0 (int) ;

const ObjectAddress *
RenameTypeStmtObjectAddress(RenameStmt *stmt, bool missing_ok)
{
 TypeName *typeName = ((void*)0);
 Oid typeOid = InvalidOid;
 ObjectAddress *address = ((void*)0);

 Assert(stmt->renameType == OBJECT_TYPE);

 typeName = makeTypeNameFromNameList((List *) stmt->object);
 typeOid = LookupTypeNameOid(((void*)0), typeName, missing_ok);
 address = palloc0(sizeof(ObjectAddress));
 ObjectAddressSet(*address, TypeRelationId, typeOid);

 return address;
}
