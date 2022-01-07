
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inhrelid; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_inherits ;


 int AccessShareLock ;
 int Anum_pg_inherits_inhrelid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int *) ;
 int InheritsRelationId ;
 int InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ PartitionTable (scalar_t__) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
IsChildTable(Oid relationId)
{
 Relation pgInherits = ((void*)0);
 SysScanDesc scan = ((void*)0);
 ScanKeyData key[1];
 HeapTuple inheritsTuple = ((void*)0);
 bool tableInherits = 0;

 pgInherits = heap_open(InheritsRelationId, AccessShareLock);

 ScanKeyInit(&key[0], Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relationId));

 scan = systable_beginscan(pgInherits, InvalidOid, 0,
         ((void*)0), 1, key);

 while ((inheritsTuple = systable_getnext(scan)) != ((void*)0))
 {
  Oid inheritedRelationId =
   ((Form_pg_inherits) GETSTRUCT(inheritsTuple))->inhrelid;

  if (relationId == inheritedRelationId)
  {
   tableInherits = 1;
   break;
  }
 }

 systable_endscan(scan);
 heap_close(pgInherits, AccessShareLock);

 if (tableInherits && PartitionTable(relationId))
 {
  tableInherits = 0;
 }

 return tableInherits;
}
