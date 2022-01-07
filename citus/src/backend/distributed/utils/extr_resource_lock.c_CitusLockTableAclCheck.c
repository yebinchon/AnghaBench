
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ LOCKMODE ;
typedef int AclResult ;
typedef int AclMode ;


 int ACL_DELETE ;
 int ACL_INSERT ;
 int ACL_SELECT ;
 int ACL_TRUNCATE ;
 int ACL_UPDATE ;
 scalar_t__ AccessShareLock ;
 scalar_t__ RowExclusiveLock ;
 int pg_class_aclcheck (int ,int ,int) ;

__attribute__((used)) static AclResult
CitusLockTableAclCheck(Oid relationId, LOCKMODE lockmode, Oid userId)
{
 AclResult aclResult;
 AclMode aclMask;


 if (lockmode == AccessShareLock)
 {
  aclMask = ACL_SELECT;
 }
 else if (lockmode == RowExclusiveLock)
 {
  aclMask = ACL_INSERT | ACL_UPDATE | ACL_DELETE | ACL_TRUNCATE;
 }
 else
 {
  aclMask = ACL_UPDATE | ACL_DELETE | ACL_TRUNCATE;
 }

 aclResult = pg_class_aclcheck(relationId, userId, aclMask);

 return aclResult;
}
