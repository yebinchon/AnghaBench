
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectSubId; int objectId; int classId; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_dist_object_classid ;
 int Anum_pg_dist_object_objid ;
 int Anum_pg_dist_object_objsubid ;
 int BTEqualStrategyNumber ;
 int DistObjectPrimaryKeyIndexId () ;
 int DistObjectRelationId () ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int Int32GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * heap_open (int ,int ) ;
 int relation_close (int *,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
IsObjectDistributed(const ObjectAddress *address)
{
 Relation pgDistObjectRel = ((void*)0);
 ScanKeyData key[3];
 SysScanDesc pgDistObjectScan = ((void*)0);
 HeapTuple pgDistObjectTup = ((void*)0);
 bool result = 0;

 pgDistObjectRel = heap_open(DistObjectRelationId(), AccessShareLock);


 ScanKeyInit(&key[0], Anum_pg_dist_object_classid, BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(address->classId));
 ScanKeyInit(&key[1], Anum_pg_dist_object_objid, BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(address->objectId));
 ScanKeyInit(&key[2], Anum_pg_dist_object_objsubid, BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(address->objectSubId));
 pgDistObjectScan = systable_beginscan(pgDistObjectRel, DistObjectPrimaryKeyIndexId(),
            1, ((void*)0), 3, key);

 pgDistObjectTup = systable_getnext(pgDistObjectScan);
 if (HeapTupleIsValid(pgDistObjectTup))
 {
  result = 1;
 }

 systable_endscan(pgDistObjectScan);
 relation_close(pgDistObjectRel, AccessShareLock);

 return result;
}
