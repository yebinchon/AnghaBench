
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ReindexIndexCallbackState {scalar_t__ locked_table_oid; scalar_t__ concurrent; } ;
struct TYPE_3__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef scalar_t__ Oid ;
typedef int LOCKMODE ;


 int ACLCHECK_NOT_OWNER ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ IndexGetRelation (scalar_t__,int) ;
 scalar_t__ InvalidOid ;
 int LockRelationOid (scalar_t__,int ) ;
 int OBJECT_INDEX ;
 scalar_t__ OidIsValid (scalar_t__) ;
 char RELKIND_INDEX ;
 char RELKIND_PARTITIONED_INDEX ;
 int ShareLock ;
 int ShareUpdateExclusiveLock ;
 int UnlockRelationOid (scalar_t__,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 char get_rel_relkind (scalar_t__) ;
 int pg_class_ownercheck (scalar_t__,int ) ;

__attribute__((used)) static void
RangeVarCallbackForReindexIndex(const RangeVar *relation, Oid relId, Oid oldRelId,
        void *arg)
{

 char relkind;
 struct ReindexIndexCallbackState *state = arg;
 LOCKMODE table_lockmode;
 table_lockmode = ShareLock;







 if (relId != oldRelId && OidIsValid(oldRelId))
 {
  UnlockRelationOid(state->locked_table_oid, table_lockmode);
  state->locked_table_oid = InvalidOid;
 }


 if (!OidIsValid(relId))
  return;






 relkind = get_rel_relkind(relId);
 if (!relkind)
  return;
 if (relkind != RELKIND_INDEX && relkind != RELKIND_PARTITIONED_INDEX)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not an index", relation->relname)));


 if (!pg_class_ownercheck(relId, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_INDEX, relation->relname);


 if (relId != oldRelId)
 {
  Oid table_oid = IndexGetRelation(relId, 1);





  if (OidIsValid(table_oid))
  {
   LockRelationOid(table_oid, table_lockmode);
   state->locked_table_oid = table_oid;
  }
 }

}
