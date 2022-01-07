
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enumlabel; } ;
struct TYPE_5__ {int member_0; } ;
typedef int * SysScanDesc ;
typedef TYPE_1__ ScanKeyData ;
typedef int * Relation ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_enum ;


 int AccessShareLock ;
 int Anum_pg_enum_enumtypid ;
 int BTEqualStrategyNumber ;
 int EnumRelationId ;
 int EnumTypIdSortOrderIndexId ;
 int F_OIDEQ ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int * NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (TYPE_1__*,int ,int ,int ,int ) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * lappend (int *,int ) ;
 int makeString (int ) ;
 int pstrdup (int ) ;
 int * systable_beginscan (int *,int ,int,int *,int,TYPE_1__*) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

__attribute__((used)) static List *
EnumValsList(Oid typeOid)
{
 Relation enum_rel = ((void*)0);
 SysScanDesc enum_scan = ((void*)0);
 HeapTuple enum_tuple = ((void*)0);
 ScanKeyData skey = { 0 };

 List *vals = NIL;


 ScanKeyInit(&skey,
    Anum_pg_enum_enumtypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(typeOid));

 enum_rel = heap_open(EnumRelationId, AccessShareLock);
 enum_scan = systable_beginscan(enum_rel,
           EnumTypIdSortOrderIndexId,
           1, ((void*)0),
           1, &skey);


 while (HeapTupleIsValid(enum_tuple = systable_getnext(enum_scan)))
 {
  Form_pg_enum en = (Form_pg_enum) GETSTRUCT(enum_tuple);
  vals = lappend(vals, makeString(pstrdup(NameStr(en->enumlabel))));
 }

 systable_endscan(enum_scan);
 heap_close(enum_rel, AccessShareLock);
 return vals;
}
