
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Value ;
typedef int TypeName ;
struct TYPE_3__ {scalar_t__ objectType; scalar_t__ object; int newschema; } ;
typedef scalar_t__ Oid ;
typedef int const ObjectAddress ;
typedef int List ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int Assert (int) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupTypeNameOid (int *,int *,int) ;
 int * NIL ;
 scalar_t__ OBJECT_TYPE ;
 int ObjectAddressSet (int const,int ,scalar_t__) ;
 int TypeNameToString (int *) ;
 int TypeRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int * lfirst (int ) ;
 int * list_make2 (int ,int *) ;
 int list_tail (int *) ;
 int makeString (int ) ;
 int * makeTypeNameFromNameList (int *) ;
 int const* palloc0 (int) ;

const ObjectAddress *
AlterTypeSchemaStmtObjectAddress(AlterObjectSchemaStmt *stmt, bool missing_ok)
{
 ObjectAddress *address = ((void*)0);
 TypeName *typeName = ((void*)0);
 Oid typeOid = InvalidOid;
 List *names = NIL;

 Assert(stmt->objectType == OBJECT_TYPE);

 names = (List *) stmt->object;





 typeName = makeTypeNameFromNameList(names);
 typeOid = LookupTypeNameOid(((void*)0), typeName, 1);

 if (typeOid == InvalidOid)
 {






  Value *typeNameStr = lfirst(list_tail(names));





  names = list_make2(makeString(stmt->newschema), typeNameStr);
  typeName = makeTypeNameFromNameList(names);
  typeOid = LookupTypeNameOid(((void*)0), typeName, 1);





  if (!missing_ok && typeOid == InvalidOid)
  {
   names = (List *) stmt->object;
   typeName = makeTypeNameFromNameList(names);

   ereport(ERROR, (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("type \"%s\" does not exist",
           TypeNameToString(typeName))));
  }
 }

 address = palloc0(sizeof(ObjectAddress));
 ObjectAddressSet(*address, TypeRelationId, typeOid);

 return address;
}
