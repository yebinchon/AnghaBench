
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TupleDesc ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_dist_partition_colocationid ;
 int Anum_pg_dist_partition_logicalrelid ;
 int BTEqualStrategyNumber ;
 int DistPartitionColocationidIndexId () ;
 int DistPartitionRelationId () ;
 int F_INT4EQ ;
 scalar_t__ HeapTupleIsValid (int *) ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int * NIL ;
 int ObjectIdGetDatum (scalar_t__) ;
 int * RelationGetDescr (int *) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 scalar_t__ heap_getattr (int *,int ,int *,int*) ;
 int * heap_open (int ,int ) ;
 int * lappend_oid (int *,scalar_t__) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

__attribute__((used)) static List *
ColocationGroupTableList(Oid colocationId)
{
 List *colocatedTableList = NIL;
 Relation pgDistPartition = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 bool indexOK = 1;
 int scanKeyCount = 1;
 ScanKeyData scanKey[1];





 if (colocationId == INVALID_COLOCATION_ID)
 {
  return NIL;
 }

 ScanKeyInit(&scanKey[0], Anum_pg_dist_partition_colocationid,
    BTEqualStrategyNumber, F_INT4EQ, ObjectIdGetDatum(colocationId));

 pgDistPartition = heap_open(DistPartitionRelationId(), AccessShareLock);
 tupleDescriptor = RelationGetDescr(pgDistPartition);
 scanDescriptor = systable_beginscan(pgDistPartition,
          DistPartitionColocationidIndexId(),
          indexOK, ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  bool isNull = 0;
  Oid colocatedTableId = heap_getattr(heapTuple,
           Anum_pg_dist_partition_logicalrelid,
           tupleDescriptor, &isNull);

  colocatedTableList = lappend_oid(colocatedTableList, colocatedTableId);
  heapTuple = systable_getnext(scanDescriptor);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistPartition, AccessShareLock);

 return colocatedTableList;
}
