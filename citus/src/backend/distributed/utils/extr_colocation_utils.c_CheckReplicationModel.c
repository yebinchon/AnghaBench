
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char replicationModel; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 TYPE_1__* DistributedTableCacheEntry (int ) ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errdetail (char*,char*,char*) ;
 int errmsg (char*,char*,char*) ;
 char* get_rel_name (int ) ;

void
CheckReplicationModel(Oid sourceRelationId, Oid targetRelationId)
{
 DistTableCacheEntry *sourceTableEntry = ((void*)0);
 DistTableCacheEntry *targetTableEntry = ((void*)0);
 char sourceReplicationModel = 0;
 char targetReplicationModel = 0;

 sourceTableEntry = DistributedTableCacheEntry(sourceRelationId);
 sourceReplicationModel = sourceTableEntry->replicationModel;

 targetTableEntry = DistributedTableCacheEntry(targetRelationId);
 targetReplicationModel = targetTableEntry->replicationModel;

 if (sourceReplicationModel != targetReplicationModel)
 {
  char *sourceRelationName = get_rel_name(sourceRelationId);
  char *targetRelationName = get_rel_name(targetRelationId);

  ereport(ERROR, (errmsg("cannot colocate tables %s and %s",
          sourceRelationName, targetRelationName),
      errdetail("Replication models don't match for %s and %s.",
          sourceRelationName, targetRelationName)));
 }
}
