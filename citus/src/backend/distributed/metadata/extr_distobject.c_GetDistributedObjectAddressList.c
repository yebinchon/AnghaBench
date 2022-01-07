
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int objsubid; int objid; int classid; } ;
typedef int * SysScanDesc ;
typedef int * Relation ;
typedef int ObjectAddress ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_dist_object ;


 int AccessShareLock ;
 int DistObjectRelationId () ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int * NIL ;
 int ObjectAddressSubSet (int ,int ,int ,int ) ;
 int * heap_open (int ,int ) ;
 int * lappend (int *,int *) ;
 int * palloc0 (int) ;
 int relation_close (int *,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int ,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

List *
GetDistributedObjectAddressList(void)
{
 Relation pgDistObjectRel = ((void*)0);
 SysScanDesc pgDistObjectScan = ((void*)0);
 HeapTuple pgDistObjectTup = ((void*)0);
 List *objectAddressList = NIL;

 pgDistObjectRel = heap_open(DistObjectRelationId(), AccessShareLock);
 pgDistObjectScan = systable_beginscan(pgDistObjectRel, InvalidOid, 0, ((void*)0), 0,
            ((void*)0));
 while (HeapTupleIsValid(pgDistObjectTup = systable_getnext(pgDistObjectScan)))
 {
  Form_pg_dist_object pg_dist_object =
   (Form_pg_dist_object) GETSTRUCT(pgDistObjectTup);
  ObjectAddress *objectAddress = palloc0(sizeof(ObjectAddress));
  ObjectAddressSubSet(*objectAddress,
       pg_dist_object->classid,
       pg_dist_object->objid,
       pg_dist_object->objsubid);
  objectAddressList = lappend(objectAddressList, objectAddress);
 }

 systable_endscan(pgDistObjectScan);
 relation_close(pgDistObjectRel, AccessShareLock);

 return objectAddressList;
}
