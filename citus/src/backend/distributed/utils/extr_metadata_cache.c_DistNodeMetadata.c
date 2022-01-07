
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
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_dist_node_metadata_metadata ;
 int Assert (int) ;
 int ERROR ;
 scalar_t__ HeapTupleIsValid (int *) ;
 scalar_t__ InvalidOid ;
 int PG_CATALOG_NAMESPACE ;
 int * RelationGetDescr (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ get_relname_relid (char*,int ) ;
 int heap_close (int *,int ) ;
 int heap_getattr (int *,int ,int *,int*) ;
 int * heap_open (scalar_t__,int ) ;
 int * systable_beginscan (int *,scalar_t__,int,int *,int const,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

Datum
DistNodeMetadata(void)
{
 Datum metadata = 0;
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 const int scanKeyCount = 0;
 HeapTuple heapTuple = ((void*)0);
 Oid metadataTableOid = InvalidOid;
 Relation pgDistNodeMetadata = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);

 metadataTableOid = get_relname_relid("pg_dist_node_metadata",
           PG_CATALOG_NAMESPACE);
 if (metadataTableOid == InvalidOid)
 {
  ereport(ERROR, (errmsg("pg_dist_node_metadata was not found")));
 }

 pgDistNodeMetadata = heap_open(metadataTableOid, AccessShareLock);
 scanDescriptor = systable_beginscan(pgDistNodeMetadata,
          InvalidOid, 0,
          ((void*)0), scanKeyCount, scanKey);
 tupleDescriptor = RelationGetDescr(pgDistNodeMetadata);

 heapTuple = systable_getnext(scanDescriptor);
 if (HeapTupleIsValid(heapTuple))
 {
  bool isNull = 0;
  metadata = heap_getattr(heapTuple, Anum_pg_dist_node_metadata_metadata,
        tupleDescriptor, &isNull);
  Assert(!isNull);
 }
 else
 {
  ereport(ERROR, (errmsg(
       "could not find any entries in pg_dist_metadata")));
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistNodeMetadata, AccessShareLock);

 return metadata;
}
