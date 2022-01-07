
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ partitionMethod; scalar_t__ referencedRelationsViaForeignKey; } ;
typedef int ShardPlacementAccessType ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 int DEBUG1 ;
 scalar_t__ DISTRIBUTE_BY_HASH ;
 TYPE_1__* DistributedTableCacheEntry (int ) ;
 int ERROR ;
 int EnforceForeignKeyRestrictions ;
 scalar_t__ HoldsConflictingLockWithReferencedRelations (int ,int ,int *,int *) ;
 int InvalidOid ;
 int IsDistributedTable (int ) ;
 scalar_t__ MultiShardConnectionType ;
 scalar_t__ NIL ;
 scalar_t__ PARALLEL_CONNECTION ;
 int PLACEMENT_ACCESS_SELECT ;
 scalar_t__ ParallelQueryExecutedInTransaction () ;
 char* PlacementAccessTypeToText (int ) ;
 int SetLocalMultiShardModifyModeToSequential () ;
 int ereport (int ,int ) ;
 int errdetail (char*,...) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 char* get_rel_name (int ) ;

__attribute__((used)) static void
CheckConflictingParallelRelationAccesses(Oid relationId, ShardPlacementAccessType
           accessType)
{
 DistTableCacheEntry *cacheEntry = ((void*)0);
 Oid conflictingReferencingRelationId = InvalidOid;
 ShardPlacementAccessType conflictingAccessType = PLACEMENT_ACCESS_SELECT;

 if (!EnforceForeignKeyRestrictions || !IsDistributedTable(relationId))
 {
  return;
 }

 cacheEntry = DistributedTableCacheEntry(relationId);
 if (!(cacheEntry->partitionMethod == DISTRIBUTE_BY_HASH &&
    cacheEntry->referencedRelationsViaForeignKey != NIL))
 {
  return;
 }

 if (MultiShardConnectionType == PARALLEL_CONNECTION &&
  HoldsConflictingLockWithReferencedRelations(relationId, accessType,
             &conflictingReferencingRelationId,
             &conflictingAccessType))
 {
  char *relationName = get_rel_name(relationId);
  char *conflictingRelationName = get_rel_name(conflictingReferencingRelationId);

  char *accessTypeText = PlacementAccessTypeToText(accessType);
  char *conflictingAccessTypeText =
   PlacementAccessTypeToText(conflictingAccessType);

  if (ParallelQueryExecutedInTransaction())
  {





   ereport(ERROR, (errmsg("cannot execute parallel %s on relation \"%s\" "
           "after %s command on reference relation "
           "\"%s\" because there is a foreign key between "
           "them and \"%s\" has been accessed in this transaction",
           accessTypeText, relationName,
           conflictingAccessTypeText, conflictingRelationName,
           conflictingRelationName),
       errdetail("When there is a foreign key to a reference "
           "table, Citus needs to perform all operations "
           "over a single connection per node to ensure "
           "consistency."),
       errhint("Try re-running the transaction with "
         "\"SET LOCAL citus.multi_shard_modify_mode TO "
         "\'sequential\';\"")));
  }
  else
  {
   ereport(DEBUG1, (errmsg("switching to sequential query execution mode"),
        errdetail("cannot execute parallel %s on relation \"%s\" "
            "after %s command on reference relation "
            "\"%s\" because there is a foreign key between "
            "them and \"%s\" has been accessed in this transaction",
            accessTypeText, relationName,
            conflictingAccessTypeText, conflictingRelationName,
            conflictingRelationName)));

   SetLocalMultiShardModifyModeToSequential();
  }
 }
}
