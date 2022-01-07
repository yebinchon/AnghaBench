
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int values ;
typedef int replace ;
typedef int isnull ;
typedef int * TupleDesc ;
struct TYPE_8__ {int t_self; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;
typedef int CatalogIndexState ;


 int Anum_pg_dist_node_hasmetadata ;
 int Anum_pg_dist_node_metadatasynced ;
 int BTEqualStrategyNumber ;
 int BoolGetDatum (int) ;
 int CatalogCloseIndexes (int ) ;
 int CatalogOpenIndexes (int *) ;
 int CatalogTupleUpdateWithInfo (int *,int *,TYPE_1__*,int ) ;
 int CommandCounterIncrement () ;
 int DistNodeRelationId () ;
 int ExclusiveLock ;
 int F_BOOLEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int InvalidOid ;
 int Natts_pg_dist_node ;
 int NoLock ;
 int * RelationGetDescr (int *) ;
 int ScanKeyInit (int *,int,int ,int ,int) ;
 int heap_close (int *,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int *,int*,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int,int) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_1__* systable_getnext (int *) ;

__attribute__((used)) static bool
UnsetMetadataSyncedForAll(void)
{
 bool updatedAtLeastOne = 0;
 Relation relation = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[2];
 int scanKeyCount = 2;
 bool indexOK = 0;
 HeapTuple heapTuple = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 CatalogIndexState indstate;






 relation = heap_open(DistNodeRelationId(), ExclusiveLock);
 tupleDescriptor = RelationGetDescr(relation);
 ScanKeyInit(&scanKey[0], Anum_pg_dist_node_hasmetadata,
    BTEqualStrategyNumber, F_BOOLEQ, BoolGetDatum(1));
 ScanKeyInit(&scanKey[1], Anum_pg_dist_node_metadatasynced,
    BTEqualStrategyNumber, F_BOOLEQ, BoolGetDatum(1));

 indstate = CatalogOpenIndexes(relation);

 scanDescriptor = systable_beginscan(relation,
          InvalidOid, indexOK,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 if (HeapTupleIsValid(heapTuple))
 {
  updatedAtLeastOne = 1;
 }

 while (HeapTupleIsValid(heapTuple))
 {
  HeapTuple newHeapTuple = ((void*)0);
  Datum values[Natts_pg_dist_node];
  bool isnull[Natts_pg_dist_node];
  bool replace[Natts_pg_dist_node];

  memset(replace, 0, sizeof(replace));
  memset(isnull, 0, sizeof(isnull));
  memset(values, 0, sizeof(values));

  values[Anum_pg_dist_node_metadatasynced - 1] = BoolGetDatum(0);
  replace[Anum_pg_dist_node_metadatasynced - 1] = 1;

  newHeapTuple = heap_modify_tuple(heapTuple, tupleDescriptor, values, isnull,
           replace);

  CatalogTupleUpdateWithInfo(relation, &newHeapTuple->t_self, newHeapTuple,
           indstate);

  CommandCounterIncrement();

  heap_freetuple(newHeapTuple);

  heapTuple = systable_getnext(scanDescriptor);
 }

 systable_endscan(scanDescriptor);
 CatalogCloseIndexes(indstate);
 heap_close(relation, NoLock);

 return updatedAtLeastOne;
}
