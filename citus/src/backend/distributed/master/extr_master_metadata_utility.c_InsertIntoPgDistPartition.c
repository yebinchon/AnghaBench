
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int newValues ;
typedef int newNulls ;
typedef int Var ;
typedef int * Relation ;
typedef int Oid ;
typedef int Node ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_partition_colocationid ;
 int Anum_pg_dist_partition_logicalrelid ;
 int Anum_pg_dist_partition_partkey ;
 int Anum_pg_dist_partition_partmethod ;
 int Anum_pg_dist_partition_repmodel ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleInsert (int *,int *) ;
 int CharGetDatum (char) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 char DISTRIBUTE_BY_NONE ;
 int DistPartitionRelationId () ;
 int Natts_pg_dist_partition ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RecordDistributedRelationDependencies (int ,int *) ;
 int RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int UInt32GetDatum (int ) ;
 int heap_close (int *,int ) ;
 int * heap_form_tuple (int ,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int,int) ;
 char* nodeToString (int *) ;

void
InsertIntoPgDistPartition(Oid relationId, char distributionMethod,
        Var *distributionColumn, uint32 colocationId,
        char replicationModel)
{
 Relation pgDistPartition = ((void*)0);
 char *distributionColumnString = ((void*)0);

 HeapTuple newTuple = ((void*)0);
 Datum newValues[Natts_pg_dist_partition];
 bool newNulls[Natts_pg_dist_partition];


 pgDistPartition = heap_open(DistPartitionRelationId(), RowExclusiveLock);


 memset(newValues, 0, sizeof(newValues));
 memset(newNulls, 0, sizeof(newNulls));

 newValues[Anum_pg_dist_partition_logicalrelid - 1] =
  ObjectIdGetDatum(relationId);
 newValues[Anum_pg_dist_partition_partmethod - 1] =
  CharGetDatum(distributionMethod);
 newValues[Anum_pg_dist_partition_colocationid - 1] = UInt32GetDatum(colocationId);
 newValues[Anum_pg_dist_partition_repmodel - 1] = CharGetDatum(replicationModel);


 if (distributionMethod != DISTRIBUTE_BY_NONE)
 {
  distributionColumnString = nodeToString((Node *) distributionColumn);

  newValues[Anum_pg_dist_partition_partkey - 1] =
   CStringGetTextDatum(distributionColumnString);
 }
 else
 {
  newValues[Anum_pg_dist_partition_partkey - 1] = PointerGetDatum(((void*)0));
  newNulls[Anum_pg_dist_partition_partkey - 1] = 1;
 }

 newTuple = heap_form_tuple(RelationGetDescr(pgDistPartition), newValues, newNulls);


 CatalogTupleInsert(pgDistPartition, newTuple);

 CitusInvalidateRelcacheByRelid(relationId);

 RecordDistributedRelationDependencies(relationId, (Node *) distributionColumn);

 CommandCounterIncrement();
 heap_close(pgDistPartition, NoLock);
}
