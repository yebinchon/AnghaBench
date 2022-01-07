
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ deptype; int refobjsubid; int refobjid; int refclassid; } ;
struct TYPE_6__ {int objectId; int classId; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_depend ;


 int AccessShareLock ;
 int Anum_pg_depend_classid ;
 int Anum_pg_depend_objid ;
 int BTEqualStrategyNumber ;
 scalar_t__ DEPENDENCY_EXTENSION ;
 int DependDependerIndexId ;
 int DependRelationId ;
 int F_OIDEQ ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int ObjectAddressSubSet (TYPE_1__,int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
IsObjectAddressOwnedByExtension(const ObjectAddress *target,
        ObjectAddress *extensionAddress)
{
 Relation depRel = ((void*)0);
 ScanKeyData key[2];
 SysScanDesc depScan = ((void*)0);
 HeapTuple depTup = ((void*)0);
 bool result = 0;

 depRel = heap_open(DependRelationId, AccessShareLock);


 ScanKeyInit(&key[0], Anum_pg_depend_classid, BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(target->classId));
 ScanKeyInit(&key[1], Anum_pg_depend_objid, BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(target->objectId));
 depScan = systable_beginscan(depRel, DependDependerIndexId, 1, ((void*)0), 2, key);

 while (HeapTupleIsValid(depTup = systable_getnext(depScan)))
 {
  Form_pg_depend pg_depend = (Form_pg_depend) GETSTRUCT(depTup);
  if (pg_depend->deptype == DEPENDENCY_EXTENSION)
  {
   result = 1;
   if (extensionAddress != ((void*)0))
   {
    ObjectAddressSubSet(*extensionAddress, pg_depend->refclassid,
         pg_depend->refobjid, pg_depend->refobjsubid);
   }
   break;
  }
 }

 systable_endscan(depScan);
 heap_close(depRel, AccessShareLock);

 return result;
}
