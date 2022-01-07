
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct DropRelationCallbackState {char relkind; scalar_t__ heapOid; scalar_t__ concurrent; } ;
struct TYPE_6__ {char relkind; int relnamespace; } ;
struct TYPE_5__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef scalar_t__ Oid ;
typedef int LOCKMODE ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int ACLCHECK_NOT_OWNER ;
 int AccessExclusiveLock ;
 int Assert (int) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ IndexGetRelation (scalar_t__,int) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsSystemClass (scalar_t__,TYPE_2__*) ;
 int LockRelationOid (scalar_t__,int ) ;
 int OBJECT_INDEX ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 char RELKIND_INDEX ;
 char RELKIND_PARTITIONED_INDEX ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ShareUpdateExclusiveLock ;
 int UnlockRelationOid (scalar_t__,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int allowSystemTableMods ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pg_class_ownercheck (scalar_t__,int ) ;
 int pg_namespace_ownercheck (int ,int ) ;

__attribute__((used)) static void
RangeVarCallbackForDropIndex(const RangeVar *rel, Oid relOid, Oid oldRelOid, void *arg)
{

 HeapTuple tuple;
 struct DropRelationCallbackState *state;
 char relkind;
 char expected_relkind;
 Form_pg_class classform;
 LOCKMODE heap_lockmode;

 state = (struct DropRelationCallbackState *) arg;
 relkind = state->relkind;
 heap_lockmode = state->concurrent ?
                 ShareUpdateExclusiveLock : AccessExclusiveLock;

 Assert(relkind == RELKIND_INDEX);






 if (relOid != oldRelOid && OidIsValid(state->heapOid))
 {
  UnlockRelationOid(state->heapOid, heap_lockmode);
  state->heapOid = InvalidOid;
 }


 if (!OidIsValid(relOid))
  return;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relOid));
 if (!HeapTupleIsValid(tuple))
  return;
 classform = (Form_pg_class) GETSTRUCT(tuple);
 expected_relkind = classform->relkind;

 if (expected_relkind == RELKIND_PARTITIONED_INDEX)
  expected_relkind = RELKIND_INDEX;

 if (expected_relkind != relkind)
  ereport(ERROR, (errcode(ERRCODE_WRONG_OBJECT_TYPE),
    errmsg("\"%s\" is not an index", rel->relname)));


 if (!pg_class_ownercheck(relOid, GetUserId()) &&
     !pg_namespace_ownercheck(classform->relnamespace, GetUserId()))
 {
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_INDEX, rel->relname);
 }

 if (!allowSystemTableMods && IsSystemClass(relOid, classform))
  ereport(ERROR,
          (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
            errmsg("permission denied: \"%s\" is a system catalog",
                   rel->relname)));

 ReleaseSysCache(tuple);
 if (relkind == RELKIND_INDEX && relOid != oldRelOid)
 {
  state->heapOid = IndexGetRelation(relOid, 1);
  if (OidIsValid(state->heapOid))
   LockRelationOid(state->heapOid, heap_lockmode);
 }

}
