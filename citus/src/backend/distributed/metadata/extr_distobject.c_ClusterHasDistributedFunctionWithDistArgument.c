
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_2__ {scalar_t__ classid; } ;
typedef int * SysScanDesc ;
typedef int Relation ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_dist_object ;


 int AccessShareLock ;
 int Anum_pg_dist_object_distribution_argument_index ;
 int DistObjectRelationId () ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 scalar_t__ ProcedureRelationId ;
 int RelationGetDescr (int ) ;
 int heap_attisnull (int *,int ,int ) ;
 int heap_open (int ,int ) ;
 int relation_close (int ,int ) ;
 int * systable_beginscan (int ,int ,int,int *,int ,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
ClusterHasDistributedFunctionWithDistArgument(void)
{
 bool foundDistributedFunction = 0;

 SysScanDesc pgDistObjectScan = ((void*)0);
 HeapTuple pgDistObjectTup = ((void*)0);

 Relation pgDistObjectRel = heap_open(DistObjectRelationId(), AccessShareLock);

 TupleDesc tupleDescriptor = RelationGetDescr(pgDistObjectRel);

 pgDistObjectScan =
  systable_beginscan(pgDistObjectRel, InvalidOid, 0, ((void*)0), 0, ((void*)0));
 while (HeapTupleIsValid(pgDistObjectTup = systable_getnext(pgDistObjectScan)))
 {
  Form_pg_dist_object pg_dist_object =
   (Form_pg_dist_object) GETSTRUCT(pgDistObjectTup);

  if (pg_dist_object->classid == ProcedureRelationId)
  {
   bool distArgumentIsNull = 0;
   distArgumentIsNull =
    heap_attisnull(pgDistObjectTup,
          Anum_pg_dist_object_distribution_argument_index,
          tupleDescriptor);


   if (!distArgumentIsNull)
   {
    foundDistributedFunction = 1;

    break;
   }
  }
 }

 systable_endscan(pgDistObjectScan);
 relation_close(pgDistObjectRel, AccessShareLock);

 return foundDistributedFunction;
}
