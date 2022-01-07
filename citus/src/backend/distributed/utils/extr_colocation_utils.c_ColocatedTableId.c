
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TupleDesc ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
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
 scalar_t__ InvalidOid ;
 int LockRelationOid (scalar_t__,int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RelationClose (int *) ;
 int * RelationGetDescr (int *) ;
 int * RelationIdGetRelation (scalar_t__) ;
 scalar_t__ RelationIsValid (int *) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 scalar_t__ heap_getattr (int *,int ,int *,int*) ;
 int * heap_open (int ,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

Oid
ColocatedTableId(Oid colocationId)
{
 Oid colocatedTableId = InvalidOid;
 Relation pgDistPartition = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 bool indexOK = 1;
 bool isNull = 0;
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;





 if (colocationId == INVALID_COLOCATION_ID)
 {
  return colocatedTableId;
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
  Relation colocatedRelation = ((void*)0);

  colocatedTableId = heap_getattr(heapTuple, Anum_pg_dist_partition_logicalrelid,
          tupleDescriptor, &isNull);





  LockRelationOid(colocatedTableId, AccessShareLock);





  colocatedRelation = RelationIdGetRelation(colocatedTableId);
  if (RelationIsValid(colocatedRelation))
  {

   RelationClose(colocatedRelation);
   break;
  }


  colocatedTableId = InvalidOid;

  heapTuple = systable_getnext(scanDescriptor);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistPartition, AccessShareLock);

 return colocatedTableId;
}
