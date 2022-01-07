
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_dist_partition_logicalrelid ;
 int BTEqualStrategyNumber ;
 int DistPartitionLogicalRelidIndexId () ;
 int DistPartitionRelationId () ;
 int F_OIDEQ ;
 int HeapTupleIsValid (int *) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int * systable_beginscan (int ,int ,int,int *,int const,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

__attribute__((used)) static bool
IsDistributedTableViaCatalog(Oid relationId)
{
 HeapTuple partitionTuple = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 const int scanKeyCount = 1;
 ScanKeyData scanKey[1];
 bool indexOK = 1;

 Relation pgDistPartition = heap_open(DistPartitionRelationId(), AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_partition_logicalrelid,
    BTEqualStrategyNumber, F_OIDEQ, ObjectIdGetDatum(relationId));

 scanDescriptor = systable_beginscan(pgDistPartition,
          DistPartitionLogicalRelidIndexId(),
          indexOK, ((void*)0), scanKeyCount, scanKey);

 partitionTuple = systable_getnext(scanDescriptor);
 systable_endscan(scanDescriptor);
 heap_close(pgDistPartition, AccessShareLock);

 return HeapTupleIsValid(partitionTuple);
}
