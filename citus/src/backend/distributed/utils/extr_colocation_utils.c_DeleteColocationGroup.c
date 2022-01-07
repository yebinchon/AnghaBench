
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int t_self; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__* HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_dist_colocation_colocationid ;
 int BTEqualStrategyNumber ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DistColocationRelationId () ;
 int F_INT4EQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int InvalidOid ;
 int RelationGetReplicaIndex (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int UInt32GetDatum (int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * index_open (int ,int ) ;
 int simple_heap_delete (int *,int *) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_1__* systable_getnext (int *) ;

__attribute__((used)) static void
DeleteColocationGroup(uint32 colocationId)
{
 Relation pgDistColocation = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 int scanKeyCount = 1;
 ScanKeyData scanKey[1];
 bool indexOK = 0;
 HeapTuple heapTuple = ((void*)0);

 pgDistColocation = heap_open(DistColocationRelationId(), RowExclusiveLock);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_colocation_colocationid,
    BTEqualStrategyNumber, F_INT4EQ, UInt32GetDatum(colocationId));

 scanDescriptor = systable_beginscan(pgDistColocation, InvalidOid, indexOK,
          ((void*)0), scanKeyCount, scanKey);


 heapTuple = systable_getnext(scanDescriptor);
 if (HeapTupleIsValid(heapTuple))
 {




  Relation replicaIndex =
   index_open(RelationGetReplicaIndex(pgDistColocation),
        AccessShareLock);
  simple_heap_delete(pgDistColocation, &(heapTuple->t_self));

  CitusInvalidateRelcacheByRelid(DistColocationRelationId());
  CommandCounterIncrement();
  heap_close(replicaIndex, AccessShareLock);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistColocation, RowExclusiveLock);
}
