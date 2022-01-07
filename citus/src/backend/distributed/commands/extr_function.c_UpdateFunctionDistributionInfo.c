
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int replace ;
typedef int * TupleDesc ;
struct TYPE_10__ {int t_self; } ;
struct TYPE_9__ {int objectSubId; int objectId; int classId; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_object_classid ;
 int Anum_pg_dist_object_colocationid ;
 int Anum_pg_dist_object_distribution_argument_index ;
 int Anum_pg_dist_object_objid ;
 int Anum_pg_dist_object_objsubid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (int *,int *,TYPE_2__*) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DistObjectPrimaryKeyIndexId () ;
 int DistObjectRelationId () ;
 int ERROR ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int Int32GetDatum (int) ;
 int Natts_pg_dist_object ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int *,int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int ,int) ;
 int * systable_beginscan (int *,int ,int const,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_2__* systable_getnext (int *) ;

__attribute__((used)) static void
UpdateFunctionDistributionInfo(const ObjectAddress *distAddress,
          int *distribution_argument_index,
          int *colocationId)
{
 const bool indexOK = 1;

 Relation pgDistObjectRel = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 ScanKeyData scanKey[3];
 SysScanDesc scanDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_object];
 bool isnull[Natts_pg_dist_object];
 bool replace[Natts_pg_dist_object];

 pgDistObjectRel = heap_open(DistObjectRelationId(), RowExclusiveLock);
 tupleDescriptor = RelationGetDescr(pgDistObjectRel);


 ScanKeyInit(&scanKey[0], Anum_pg_dist_object_classid, BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(distAddress->classId));
 ScanKeyInit(&scanKey[1], Anum_pg_dist_object_objid, BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(distAddress->objectId));
 ScanKeyInit(&scanKey[2], Anum_pg_dist_object_objsubid, BTEqualStrategyNumber,
    F_INT4EQ, ObjectIdGetDatum(distAddress->objectSubId));

 scanDescriptor = systable_beginscan(pgDistObjectRel, DistObjectPrimaryKeyIndexId(),
          indexOK,
          ((void*)0), 3, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 if (!HeapTupleIsValid(heapTuple))
 {
  ereport(ERROR, (errmsg("could not find valid entry for node \"%d,%d,%d\" "
          "in pg_dist_object", distAddress->classId,
          distAddress->objectId, distAddress->objectSubId)));
 }

 memset(replace, 0, sizeof(replace));

 replace[Anum_pg_dist_object_distribution_argument_index - 1] = 1;

 if (distribution_argument_index != ((void*)0))
 {
  values[Anum_pg_dist_object_distribution_argument_index - 1] = Int32GetDatum(
   *distribution_argument_index);
  isnull[Anum_pg_dist_object_distribution_argument_index - 1] = 0;
 }
 else
 {
  isnull[Anum_pg_dist_object_distribution_argument_index - 1] = 1;
 }

 replace[Anum_pg_dist_object_colocationid - 1] = 1;
 if (colocationId != ((void*)0))
 {
  values[Anum_pg_dist_object_colocationid - 1] = Int32GetDatum(*colocationId);
  isnull[Anum_pg_dist_object_colocationid - 1] = 0;
 }
 else
 {
  isnull[Anum_pg_dist_object_colocationid - 1] = 1;
 }

 heapTuple = heap_modify_tuple(heapTuple, tupleDescriptor, values, isnull, replace);

 CatalogTupleUpdate(pgDistObjectRel, &heapTuple->t_self, heapTuple);

 CitusInvalidateRelcacheByRelid(DistObjectRelationId());

 CommandCounterIncrement();

 systable_endscan(scanDescriptor);

 heap_close(pgDistObjectRel, NoLock);
}
