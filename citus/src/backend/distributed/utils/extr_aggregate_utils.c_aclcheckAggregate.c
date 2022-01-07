
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int ObjectType ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 scalar_t__ InvalidOid ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int get_func_name (scalar_t__) ;
 scalar_t__ pg_proc_aclcheck (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
aclcheckAggregate(ObjectType objectType, Oid userOid, Oid funcOid)
{
 AclResult aclresult;
 if (funcOid != InvalidOid)
 {
  aclresult = pg_proc_aclcheck(funcOid, userOid, ACL_EXECUTE);
  if (aclresult != ACLCHECK_OK)
  {
   aclcheck_error(aclresult, objectType, get_func_name(funcOid));
  }
 }
}
