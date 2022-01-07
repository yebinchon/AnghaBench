
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int isNulls ;
typedef int int32 ;
typedef int * TupleDesc ;
typedef int * Relation ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_transaction_gid ;
 int Anum_pg_dist_transaction_groupid ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleInsert (int *,int *) ;
 int CommandCounterIncrement () ;
 int DistTransactionRelationId () ;
 int Int32GetDatum (int ) ;
 int Natts_pg_dist_transaction ;
 int NoLock ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int heap_close (int *,int ) ;
 int * heap_form_tuple (int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int,int) ;

void
LogTransactionRecord(int32 groupId, char *transactionName)
{
 Relation pgDistTransaction = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_transaction];
 bool isNulls[Natts_pg_dist_transaction];


 memset(values, 0, sizeof(values));
 memset(isNulls, 0, sizeof(isNulls));

 values[Anum_pg_dist_transaction_groupid - 1] = Int32GetDatum(groupId);
 values[Anum_pg_dist_transaction_gid - 1] = CStringGetTextDatum(transactionName);


 pgDistTransaction = heap_open(DistTransactionRelationId(), RowExclusiveLock);

 tupleDescriptor = RelationGetDescr(pgDistTransaction);
 heapTuple = heap_form_tuple(tupleDescriptor, values, isNulls);

 CatalogTupleInsert(pgDistTransaction, heapTuple);

 CommandCounterIncrement();


 heap_close(pgDistTransaction, NoLock);
}
