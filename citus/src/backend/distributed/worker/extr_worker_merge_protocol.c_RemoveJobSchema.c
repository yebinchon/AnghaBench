
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ objectSubId; int objectId; int classId; int member_2; int member_1; int member_0; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int Datum ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_namespace_oid ;
 int CStringGetDatum (int ) ;
 int CommandCounterIncrement () ;
 int DEBUG2 ;
 int DROP_CASCADE ;
 int DROP_RESTRICT ;
 int GetSysCacheOid1Compat (int ,int ,int ) ;
 int GetUserId () ;
 int InvalidOid ;
 int NAMESPACENAME ;
 int NamespaceRelationId ;
 int OBJECT_SCHEMA ;
 scalar_t__ OidIsValid (int ) ;
 int PERFORM_DELETION_INTERNAL ;
 int PERFORM_DELETION_QUIETLY ;
 int PERFORM_DELETION_SKIP_EXTENSIONS ;
 int PERFORM_DELETION_SKIP_ORIGINAL ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int performDeletion (TYPE_2__*,int ,int) ;
 int pg_namespace_ownercheck (int ,int ) ;

void
RemoveJobSchema(StringInfo schemaName)
{
 Datum schemaNameDatum = CStringGetDatum(schemaName->data);
 Oid schemaId = InvalidOid;

 schemaId = GetSysCacheOid1Compat(NAMESPACENAME, Anum_pg_namespace_oid,
          schemaNameDatum);
 if (OidIsValid(schemaId))
 {
  ObjectAddress schemaObject = { 0, 0, 0 };

  bool permissionsOK = pg_namespace_ownercheck(schemaId, GetUserId());
  if (!permissionsOK)
  {
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_SCHEMA, schemaName->data);
  }

  schemaObject.classId = NamespaceRelationId;
  schemaObject.objectId = schemaId;
  schemaObject.objectSubId = 0;







  performDeletion(&schemaObject, DROP_CASCADE,
      PERFORM_DELETION_INTERNAL |
      PERFORM_DELETION_QUIETLY |
      PERFORM_DELETION_SKIP_ORIGINAL |
      PERFORM_DELETION_SKIP_EXTENSIONS);

  CommandCounterIncrement();


  performDeletion(&schemaObject, DROP_RESTRICT, 0);
  CommandCounterIncrement();
 }
 else
 {
  ereport(DEBUG2, (errmsg("schema \"%s\" does not exist, skipping",
        schemaName->data)));
 }
}
