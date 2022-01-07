
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int values ;
typedef int uint32 ;
typedef int replace ;
typedef int isNull ;
typedef int * TupleDesc ;
struct TYPE_7__ {int t_self; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_partition_colocationid ;
 int Anum_pg_dist_partition_logicalrelid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (int *,int *,TYPE_1__*) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 char* ColocationIdUpdateCommand (int ,int ) ;
 int CommandCounterIncrement () ;
 int DistPartitionLogicalRelidIndexId () ;
 int DistPartitionRelationId () ;
 int ERROR ;
 int F_OIDEQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Natts_pg_dist_partition ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SendCommandToWorkers (int ,char*) ;
 int ShouldSyncTableMetadata (int ) ;
 int UInt32GetDatum (int ) ;
 int WORKERS_WITH_METADATA ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;
 int heap_close (int *,int ) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int *,int*,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int,int) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_1__* systable_getnext (int *) ;

__attribute__((used)) static void
UpdateRelationColocationGroup(Oid distributedRelationId, uint32 colocationId)
{
 Relation pgDistPartition = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 bool shouldSyncMetadata = 0;
 bool indexOK = 1;
 int scanKeyCount = 1;
 ScanKeyData scanKey[1];
 Datum values[Natts_pg_dist_partition];
 bool isNull[Natts_pg_dist_partition];
 bool replace[Natts_pg_dist_partition];

 pgDistPartition = heap_open(DistPartitionRelationId(), RowExclusiveLock);
 tupleDescriptor = RelationGetDescr(pgDistPartition);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_partition_logicalrelid,
    BTEqualStrategyNumber, F_OIDEQ, ObjectIdGetDatum(distributedRelationId));

 scanDescriptor = systable_beginscan(pgDistPartition,
          DistPartitionLogicalRelidIndexId(), indexOK,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 if (!HeapTupleIsValid(heapTuple))
 {
  char *distributedRelationName = get_rel_name(distributedRelationId);
  ereport(ERROR, (errmsg("could not find valid entry for relation %s",
          distributedRelationName)));
 }

 memset(values, 0, sizeof(values));
 memset(isNull, 0, sizeof(isNull));
 memset(replace, 0, sizeof(replace));

 values[Anum_pg_dist_partition_colocationid - 1] = UInt32GetDatum(colocationId);
 isNull[Anum_pg_dist_partition_colocationid - 1] = 0;
 replace[Anum_pg_dist_partition_colocationid - 1] = 1;

 heapTuple = heap_modify_tuple(heapTuple, tupleDescriptor, values, isNull, replace);


 CatalogTupleUpdate(pgDistPartition, &heapTuple->t_self, heapTuple);

 CitusInvalidateRelcacheByRelid(distributedRelationId);

 CommandCounterIncrement();

 systable_endscan(scanDescriptor);
 heap_close(pgDistPartition, NoLock);

 shouldSyncMetadata = ShouldSyncTableMetadata(distributedRelationId);
 if (shouldSyncMetadata)
 {
  char *updateColocationIdCommand = ColocationIdUpdateCommand(distributedRelationId,
                 colocationId);

  SendCommandToWorkers(WORKERS_WITH_METADATA, updateColocationIdCommand);
 }
}
