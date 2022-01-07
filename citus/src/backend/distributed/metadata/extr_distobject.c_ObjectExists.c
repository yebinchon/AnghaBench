
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectId; int classId; } ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int * get_catalog_object_by_oid (int ,int ,...) ;
 int get_object_attnum_oid (int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 scalar_t__ is_objectclass_supported (int ) ;

bool
ObjectExists(const ObjectAddress *address)
{
 if (address == ((void*)0))
 {
  return 0;
 }

 if (is_objectclass_supported(address->classId))
 {
  HeapTuple objtup;
  Relation catalog = heap_open(address->classId, AccessShareLock);





  objtup = get_catalog_object_by_oid(catalog, address->objectId);

  heap_close(catalog, AccessShareLock);
  if (objtup != ((void*)0))
  {
   return 1;
  }

  return 0;
 }

 return 0;
}
