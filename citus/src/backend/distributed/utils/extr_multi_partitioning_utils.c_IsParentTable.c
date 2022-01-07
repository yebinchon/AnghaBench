
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int Anum_pg_inherits_inhparent ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int InheritsParentIndexId ;
 int InheritsRelationId ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ PartitionedTable (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
IsParentTable(Oid relationId)
{
 Relation pgInherits = ((void*)0);
 SysScanDesc scan = ((void*)0);
 ScanKeyData key[1];
 bool tableInherited = 0;

 pgInherits = heap_open(InheritsRelationId, AccessShareLock);

 ScanKeyInit(&key[0], Anum_pg_inherits_inhparent,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relationId));

 scan = systable_beginscan(pgInherits, InheritsParentIndexId, 1,
         ((void*)0), 1, key);

 if (systable_getnext(scan) != ((void*)0))
 {
  tableInherited = 1;
 }
 systable_endscan(scan);
 heap_close(pgInherits, AccessShareLock);

 if (tableInherited && PartitionedTable(relationId))
 {
  tableInherited = 0;
 }

 return tableInherited;
}
