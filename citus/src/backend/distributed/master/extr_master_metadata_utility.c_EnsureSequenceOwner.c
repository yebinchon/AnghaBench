
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ACLCHECK_NOT_OWNER ;
 int GetUserId () ;
 int OBJECT_SEQUENCE ;
 int aclcheck_error (int ,int ,int ) ;
 int get_rel_name (int ) ;
 int pg_class_ownercheck (int ,int ) ;

void
EnsureSequenceOwner(Oid sequenceOid)
{
 if (!pg_class_ownercheck(sequenceOid, GetUserId()))
 {
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_SEQUENCE,
        get_rel_name(sequenceOid));
 }
}
