
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TupleDesc ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_dist_partition_logicalrelid ;
 int DatumGetObjectId (int ) ;
 int DistPartitionRelationId () ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int * NIL ;
 int * RelationGetDescr (int ) ;
 int heap_close (int ,int ) ;
 int heap_getattr (int *,int ,int *,int*) ;
 int heap_open (int ,int ) ;
 int * lappend_oid (int *,int ) ;
 int * systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

List *
DistTableOidList(void)
{
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 0;
 HeapTuple heapTuple = ((void*)0);
 List *distTableOidList = NIL;
 TupleDesc tupleDescriptor = ((void*)0);

 Relation pgDistPartition = heap_open(DistPartitionRelationId(), AccessShareLock);

 scanDescriptor = systable_beginscan(pgDistPartition,
          InvalidOid, 0,
          ((void*)0), scanKeyCount, scanKey);

 tupleDescriptor = RelationGetDescr(pgDistPartition);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  bool isNull = 0;
  Oid relationId = InvalidOid;
  Datum relationIdDatum = heap_getattr(heapTuple,
            Anum_pg_dist_partition_logicalrelid,
            tupleDescriptor, &isNull);
  relationId = DatumGetObjectId(relationIdDatum);
  distTableOidList = lappend_oid(distTableOidList, relationId);

  heapTuple = systable_getnext(scanDescriptor);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistPartition, AccessShareLock);

 return distTableOidList;
}
