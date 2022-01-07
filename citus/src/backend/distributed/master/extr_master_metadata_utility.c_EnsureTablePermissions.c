
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ AclResult ;
typedef int AclMode ;


 scalar_t__ ACLCHECK_OK ;
 int GetUserId () ;
 int OBJECT_TABLE ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int get_rel_name (int ) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;

void
EnsureTablePermissions(Oid relationId, AclMode mode)
{
 AclResult aclresult;

 aclresult = pg_class_aclcheck(relationId, GetUserId(), mode);

 if (aclresult != ACLCHECK_OK)
 {
  aclcheck_error(aclresult, OBJECT_TABLE, get_rel_name(relationId));
 }
}
