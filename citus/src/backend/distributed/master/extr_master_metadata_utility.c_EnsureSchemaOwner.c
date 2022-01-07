
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ACLCHECK_NOT_OWNER ;
 int GetUserId () ;
 int OBJECT_SCHEMA ;
 int aclcheck_error (int ,int ,int ) ;
 int get_namespace_name (int ) ;
 int pg_namespace_ownercheck (int ,int ) ;

void
EnsureSchemaOwner(Oid schemaId)
{
 if (!pg_namespace_ownercheck(schemaId, GetUserId()))
 {
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_SCHEMA,
        get_namespace_name(schemaId));
 }
}
