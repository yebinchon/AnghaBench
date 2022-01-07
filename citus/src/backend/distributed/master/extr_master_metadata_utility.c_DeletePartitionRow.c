
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_self; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_dist_partition_logicalrelid ;
 int BTEqualStrategyNumber ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DistPartitionRelationId () ;
 int ERROR ;
 int F_OIDEQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvalidOid ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int simple_heap_delete (int *,int *) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_1__* systable_getnext (int *) ;

void
DeletePartitionRow(Oid distributedRelationId)
{
 Relation pgDistPartition = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;

 pgDistPartition = heap_open(DistPartitionRelationId(), RowExclusiveLock);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_partition_logicalrelid,
    BTEqualStrategyNumber, F_OIDEQ, ObjectIdGetDatum(distributedRelationId));

 scanDescriptor = systable_beginscan(pgDistPartition, InvalidOid, 0, ((void*)0),
          scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 if (!HeapTupleIsValid(heapTuple))
 {
  ereport(ERROR, (errmsg("could not find valid entry for partition %d",
          distributedRelationId)));
 }

 simple_heap_delete(pgDistPartition, &heapTuple->t_self);

 systable_endscan(scanDescriptor);


 CitusInvalidateRelcacheByRelid(distributedRelationId);


 CommandCounterIncrement();

 heap_close(pgDistPartition, NoLock);
}
