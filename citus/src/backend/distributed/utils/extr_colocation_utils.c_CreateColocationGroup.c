
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int uint32 ;
typedef int isNulls ;
typedef int * TupleDesc ;
typedef int * Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_colocation_colocationid ;
 int Anum_pg_dist_colocation_distributioncolumntype ;
 int Anum_pg_dist_colocation_replicationfactor ;
 int Anum_pg_dist_colocation_shardcount ;
 int CatalogTupleInsert (int *,int *) ;
 int CommandCounterIncrement () ;
 int DistColocationRelationId () ;
 int GetNextColocationId () ;
 int Natts_pg_dist_colocation ;
 int ObjectIdGetDatum (int ) ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int UInt32GetDatum (int) ;
 int heap_close (int *,int ) ;
 int * heap_form_tuple (int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int,int) ;

uint32
CreateColocationGroup(int shardCount, int replicationFactor, Oid distributionColumnType)
{
 uint32 colocationId = GetNextColocationId();
 Relation pgDistColocation = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_colocation];
 bool isNulls[Natts_pg_dist_colocation];


 memset(values, 0, sizeof(values));
 memset(isNulls, 0, sizeof(isNulls));

 values[Anum_pg_dist_colocation_colocationid - 1] = UInt32GetDatum(colocationId);
 values[Anum_pg_dist_colocation_shardcount - 1] = UInt32GetDatum(shardCount);
 values[Anum_pg_dist_colocation_replicationfactor - 1] =
  UInt32GetDatum(replicationFactor);
 values[Anum_pg_dist_colocation_distributioncolumntype - 1] =
  ObjectIdGetDatum(distributionColumnType);


 pgDistColocation = heap_open(DistColocationRelationId(), RowExclusiveLock);

 tupleDescriptor = RelationGetDescr(pgDistColocation);
 heapTuple = heap_form_tuple(tupleDescriptor, values, isNulls);

 CatalogTupleInsert(pgDistColocation, heapTuple);


 CommandCounterIncrement();
 heap_close(pgDistColocation, RowExclusiveLock);

 return colocationId;
}
