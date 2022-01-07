
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ ai_grantee; } ;
struct TYPE_11__ {int rolname; } ;
struct TYPE_10__ {int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_authid ;
typedef int Datum ;
typedef int AclMode ;
typedef TYPE_3__ AclItem ;
typedef int Acl ;


 int ACLITEM_GET_GOPTIONS (TYPE_3__) ;
 int ACLITEM_GET_PRIVS (TYPE_3__) ;
 TYPE_3__* ACL_DAT (int *) ;
 int ACL_NUM (int *) ;
 int AUTHOID ;
 int AccessShareLock ;
 int Anum_pg_class_relacl ;
 int * DatumGetAclP (int ) ;
 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int * NIL ;
 int N_ACL_RIGHTS ;
 int NameStr (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RELOID ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int *,int ,int*) ;
 int appendStringInfo (TYPE_1__*,char*,char*,...) ;
 int convert_aclright_to_string (int) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;
 char* generate_relation_name (scalar_t__,int *) ;
 int initStringInfo (TYPE_1__*) ;
 int * lappend (int *,int ) ;
 int pstrdup (int ) ;
 char* quote_identifier (int ) ;
 int relation_close (int *,int ) ;
 int * relation_open (scalar_t__,int ) ;
 int resetStringInfo (TYPE_1__*) ;

List *
pg_get_table_grants(Oid relationId)
{

 StringInfoData buffer;
 Relation relation = ((void*)0);
 char *relationName = ((void*)0);
 List *defs = NIL;
 HeapTuple classTuple = ((void*)0);
 Datum aclDatum = 0;
 bool isNull = 0;

 relation = relation_open(relationId, AccessShareLock);
 relationName = generate_relation_name(relationId, NIL);

 initStringInfo(&buffer);


 classTuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relationId));
 if (!HeapTupleIsValid(classTuple))
 {
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("relation with OID %u does not exist",
      relationId)));
 }

 aclDatum = SysCacheGetAttr(RELOID, classTuple, Anum_pg_class_relacl,
          &isNull);

 ReleaseSysCache(classTuple);

 if (!isNull)
 {
  int i = 0;
  AclItem *aidat = ((void*)0);
  Acl *acl = ((void*)0);
  int offtype = 0;
  appendStringInfo(&buffer, "REVOKE ALL ON %s FROM PUBLIC",
       relationName);
  defs = lappend(defs, pstrdup(buffer.data));
  resetStringInfo(&buffer);



  acl = DatumGetAclP(aclDatum);
  aidat = ACL_DAT(acl);

  offtype = -1;
  i = 0;
  while (i < ACL_NUM(acl))
  {
   AclItem *aidata = ((void*)0);
   AclMode priv_bit = 0;

   offtype++;

   if (offtype == N_ACL_RIGHTS)
   {
    offtype = 0;
    i++;
    if (i >= ACL_NUM(acl))
    {
     break;
    }
   }

   aidata = &aidat[i];
   priv_bit = 1 << offtype;

   if (ACLITEM_GET_PRIVS(*aidata) & priv_bit)
   {
    const char *roleName = ((void*)0);
    const char *withGrant = "";

    if (aidata->ai_grantee != 0)
    {
     HeapTuple htup;

     htup = SearchSysCache1(AUTHOID, ObjectIdGetDatum(aidata->ai_grantee));
     if (HeapTupleIsValid(htup))
     {
      Form_pg_authid authForm = ((Form_pg_authid) GETSTRUCT(htup));

      roleName = quote_identifier(NameStr(authForm->rolname));

      ReleaseSysCache(htup);
     }
     else
     {
      elog(ERROR, "cache lookup failed for role %u", aidata->ai_grantee);
     }
    }
    else
    {
     roleName = "PUBLIC";
    }

    if ((ACLITEM_GET_GOPTIONS(*aidata) & priv_bit) != 0)
    {
     withGrant = " WITH GRANT OPTION";
    }

    appendStringInfo(&buffer, "GRANT %s ON %s TO %s%s",
         convert_aclright_to_string(priv_bit),
         relationName,
         roleName,
         withGrant);

    defs = lappend(defs, pstrdup(buffer.data));

    resetStringInfo(&buffer);
   }
  }
 }

 resetStringInfo(&buffer);

 relation_close(relation, NoLock);
 return defs;

}
