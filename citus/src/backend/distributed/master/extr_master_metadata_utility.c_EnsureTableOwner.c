
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ACLCHECK_NOT_OWNER ;
 int GetUserId () ;
 int OBJECT_TABLE ;
 int aclcheck_error (int ,int ,int ) ;
 int get_rel_name (int ) ;
 int pg_class_ownercheck (int ,int ) ;

void
EnsureTableOwner(Oid relationId)
{
 if (!pg_class_ownercheck(relationId, GetUserId()))
 {
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_TABLE,
        get_rel_name(relationId));
 }
}
