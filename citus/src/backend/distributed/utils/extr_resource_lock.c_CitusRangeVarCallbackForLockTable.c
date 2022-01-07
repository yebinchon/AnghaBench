
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 scalar_t__ CitusLockTableAclCheck (int ,int ,int ) ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 int OidIsValid (int ) ;
 int RegularTable (int ) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_rel_relkind (int ) ;
 int get_relkind_objtype (int ) ;

__attribute__((used)) static void
CitusRangeVarCallbackForLockTable(const RangeVar *rangeVar, Oid relationId,
          Oid oldRelationId, void *arg)
{
 LOCKMODE lockmode = *(LOCKMODE *) arg;
 AclResult aclResult;

 if (!OidIsValid(relationId))
 {

  return;
 }


 if (!RegularTable(relationId))
 {
  ereport(ERROR, (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("\"%s\" is not a table", rangeVar->relname)));
 }


 aclResult = CitusLockTableAclCheck(relationId, lockmode, GetUserId());
 if (aclResult != ACLCHECK_OK)
 {
  aclcheck_error(aclResult, get_relkind_objtype(get_rel_relkind(relationId)),
        rangeVar->relname);
 }
}
