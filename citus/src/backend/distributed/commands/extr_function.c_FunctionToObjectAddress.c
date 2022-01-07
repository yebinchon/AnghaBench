
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ObjectWithArgs ;
typedef int ObjectType ;
typedef int ObjectAddress ;


 int AssertObjectTypeIsFunctional (int ) ;
 int InvalidOid ;
 int LookupFuncWithArgs (int ,int *,int) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ProcedureRelationId ;
 int * palloc0 (int) ;

__attribute__((used)) static ObjectAddress *
FunctionToObjectAddress(ObjectType objectType, ObjectWithArgs *objectWithArgs,
      bool missing_ok)
{
 Oid funcOid = InvalidOid;
 ObjectAddress *address = ((void*)0);

 AssertObjectTypeIsFunctional(objectType);

 funcOid = LookupFuncWithArgs(objectType, objectWithArgs, missing_ok);
 address = palloc0(sizeof(ObjectAddress));
 ObjectAddressSet(*address, ProcedureRelationId, funcOid);

 return address;
}
