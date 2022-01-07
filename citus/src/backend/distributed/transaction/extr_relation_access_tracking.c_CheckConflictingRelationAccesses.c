
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ partitionMethod; scalar_t__ referencingRelationsViaForeignKey; } ;
typedef scalar_t__ ShardPlacementAccessType ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 int DEBUG1 ;
 scalar_t__ DISTRIBUTE_BY_NONE ;
 TYPE_1__* DistributedTableCacheEntry (int ) ;
 int ERROR ;
 int EnforceForeignKeyRestrictions ;
 scalar_t__ HoldsConflictingLockWithReferencingRelations (int ,scalar_t__,int *,scalar_t__*) ;
 int InvalidOid ;
 int IsDistributedTable (int ) ;
 scalar_t__ MultiShardConnectionType ;
 scalar_t__ NIL ;
 scalar_t__ PARALLEL_CONNECTION ;
 scalar_t__ PLACEMENT_ACCESS_SELECT ;
 scalar_t__ ParallelQueryExecutedInTransaction () ;
 char* PlacementAccessTypeToText (scalar_t__) ;
 int SetLocalMultiShardModifyModeToSequential () ;
 int ereport (int ,int ) ;
 int errdetail (char*,...) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 char* get_rel_name (int ) ;

__attribute__((used)) static void
CheckConflictingRelationAccesses(Oid relationId, ShardPlacementAccessType accessType)
{
 DistTableCacheEntry *cacheEntry = ((void*)0);
 Oid conflictingReferencingRelationId = InvalidOid;
 ShardPlacementAccessType conflictingAccessType = PLACEMENT_ACCESS_SELECT;

 if (!EnforceForeignKeyRestrictions || !IsDistributedTable(relationId))
 {
  return;
 }

 cacheEntry = DistributedTableCacheEntry(relationId);

 if (!(cacheEntry->partitionMethod == DISTRIBUTE_BY_NONE &&
    cacheEntry->referencingRelationsViaForeignKey != NIL))
 {
  return;
 }

 if (HoldsConflictingLockWithReferencingRelations(relationId, accessType,
              &conflictingReferencingRelationId,
              &conflictingAccessType))
 {
  char *relationName = get_rel_name(relationId);
  char *conflictingRelationName = get_rel_name(conflictingReferencingRelationId);

  char *accessTypeText = PlacementAccessTypeToText(accessType);
  char *conflictingAccessTypeText =
   PlacementAccessTypeToText(conflictingAccessType);

  ereport(ERROR, (errmsg("cannot execute %s on reference relation \"%s\" because "
          "there was a parallel %s access to distributed relation "
          "\"%s\" in the same transaction",
          accessTypeText, relationName, conflictingAccessTypeText,
          conflictingRelationName),
      errhint("Try re-running the transaction with "
        "\"SET LOCAL citus.multi_shard_modify_mode TO "
        "\'sequential\';\"")));
 }
 else if (cacheEntry->referencingRelationsViaForeignKey != NIL &&
    accessType > PLACEMENT_ACCESS_SELECT)
 {
  char *relationName = get_rel_name(relationId);

  if (ParallelQueryExecutedInTransaction())
  {





   ereport(ERROR, (errmsg("cannot modify reference table \"%s\" because there "
           "was a parallel operation on a distributed table",
           relationName),
       errdetail("When there is a foreign key to a reference "
           "table, Citus needs to perform all operations "
           "over a single connection per node to ensure "
           "consistency."),
       errhint("Try re-running the transaction with "
         "\"SET LOCAL citus.multi_shard_modify_mode TO "
         "\'sequential\';\"")));
  }
  else if (MultiShardConnectionType == PARALLEL_CONNECTION)
  {




   ereport(DEBUG1, (errmsg("switching to sequential query execution mode"),
        errdetail(
         "Reference relation \"%s\" is modified, which might lead "
         "to data inconsistencies or distributed deadlocks via "
         "parallel accesses to hash distributed relations due to "
         "foreign keys. Any parallel modification to "
         "those hash distributed relations in the same "
         "transaction can only be executed in sequential query "
         "execution mode", relationName)));
   SetLocalMultiShardModifyModeToSequential();
  }
 }
}
