
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {int typevar; } ;
typedef int Oid ;
typedef int const ObjectAddress ;
typedef TYPE_1__ CompositeTypeStmt ;


 int InvalidOid ;
 int LookupTypeNameOid (int *,int *,int) ;
 int * MakeTypeNameFromRangeVar (int ) ;
 int ObjectAddressSet (int const,int ,int ) ;
 int TypeRelationId ;
 int const* palloc0 (int) ;

const ObjectAddress *
CompositeTypeStmtObjectAddress(CompositeTypeStmt *stmt, bool missing_ok)
{
 TypeName *typeName = ((void*)0);
 Oid typeOid = InvalidOid;
 ObjectAddress *address = ((void*)0);

 typeName = MakeTypeNameFromRangeVar(stmt->typevar);
 typeOid = LookupTypeNameOid(((void*)0), typeName, missing_ok);
 address = palloc0(sizeof(ObjectAddress));
 ObjectAddressSet(*address, TypeRelationId, typeOid);

 return address;
}
