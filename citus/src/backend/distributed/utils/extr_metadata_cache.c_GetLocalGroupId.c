
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int * TupleDesc ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_dist_local_groupid ;
 int DatumGetInt32 (int ) ;
 int GROUP_ID_UPGRADING ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InitializeCaches () ;
 scalar_t__ InvalidOid ;
 int LocalGroupId ;
 int PG_CATALOG_NAMESPACE ;
 int * RelationGetDescr (int *) ;
 scalar_t__ get_relname_relid (char*,int ) ;
 int heap_close (int *,int ) ;
 int heap_getattr (int *,int ,int *,int*) ;
 int * heap_open (scalar_t__,int ) ;
 int * systable_beginscan (int *,scalar_t__,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

int32
GetLocalGroupId(void)
{
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 0;
 HeapTuple heapTuple = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 int32 groupId = 0;
 Relation pgDistLocalGroupId = ((void*)0);
 Oid localGroupTableOid = InvalidOid;

 InitializeCaches();




 if (LocalGroupId != -1)
 {
  return LocalGroupId;
 }

 localGroupTableOid = get_relname_relid("pg_dist_local_group", PG_CATALOG_NAMESPACE);
 if (localGroupTableOid == InvalidOid)
 {
  return 0;
 }

 pgDistLocalGroupId = heap_open(localGroupTableOid, AccessShareLock);

 scanDescriptor = systable_beginscan(pgDistLocalGroupId,
          InvalidOid, 0,
          ((void*)0), scanKeyCount, scanKey);

 tupleDescriptor = RelationGetDescr(pgDistLocalGroupId);

 heapTuple = systable_getnext(scanDescriptor);

 if (HeapTupleIsValid(heapTuple))
 {
  bool isNull = 0;
  Datum groupIdDatum = heap_getattr(heapTuple,
            Anum_pg_dist_local_groupid,
            tupleDescriptor, &isNull);

  groupId = DatumGetInt32(groupIdDatum);


  LocalGroupId = groupId;
 }
 else
 {




  groupId = GROUP_ID_UPGRADING;
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistLocalGroupId, AccessShareLock);

 return groupId;
}
