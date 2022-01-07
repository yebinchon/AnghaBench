
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int options; int missing_ok; int sequence; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ AlterSeqStmt ;


 int AccessShareLock ;
 int DEPENDENCY_AUTO ;
 int DEPENDENCY_INTERNAL ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int IsDistributedTable (scalar_t__) ;
 scalar_t__ OptionsSpecifyOwnedBy (int ,scalar_t__*) ;
 scalar_t__ RangeVarGetRelid (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int sequenceIsOwned (scalar_t__,int ,scalar_t__*,int *) ;

void
ErrorIfDistributedAlterSeqOwnedBy(AlterSeqStmt *alterSeqStmt)
{
 Oid sequenceId = RangeVarGetRelid(alterSeqStmt->sequence, AccessShareLock,
           alterSeqStmt->missing_ok);
 bool sequenceOwned = 0;
 Oid ownedByTableId = InvalidOid;
 Oid newOwnedByTableId = InvalidOid;
 int32 ownedByColumnId = 0;
 bool hasDistributedOwner = 0;


 if (sequenceId == InvalidOid)
 {
  return;
 }

 sequenceOwned = sequenceIsOwned(sequenceId, DEPENDENCY_AUTO, &ownedByTableId,
         &ownedByColumnId);
 if (!sequenceOwned)
 {
  sequenceOwned = sequenceIsOwned(sequenceId, DEPENDENCY_INTERNAL, &ownedByTableId,
          &ownedByColumnId);
 }


 if (sequenceOwned)
 {
  hasDistributedOwner = IsDistributedTable(ownedByTableId);
 }

 if (OptionsSpecifyOwnedBy(alterSeqStmt->options, &newOwnedByTableId))
 {

  if (hasDistributedOwner && ownedByTableId != newOwnedByTableId)
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot alter OWNED BY option of a sequence "
           "already owned by a distributed table")));
  }
  else if (!hasDistributedOwner && IsDistributedTable(newOwnedByTableId))
  {

   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot associate an existing sequence with a "
           "distributed table"),
       errhint("Use a sequence in a distributed table by specifying "
         "a serial column type before creating any shards.")));
  }
 }
}
