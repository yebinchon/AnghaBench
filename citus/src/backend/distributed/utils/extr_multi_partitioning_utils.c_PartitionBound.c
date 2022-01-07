
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relispartition; } ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef int Datum ;


 int Anum_pg_class_relpartbound ;
 int Assert (int) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int *,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 int elog (int ,char*,int ) ;
 int pg_get_expr ;

__attribute__((used)) static char *
PartitionBound(Oid partitionId)
{
 char *partitionBoundString = ((void*)0);
 HeapTuple tuple = ((void*)0);
 Datum datum = 0;
 bool isnull = 0;
 Datum partitionBoundDatum = 0;

 tuple = SearchSysCache1(RELOID, partitionId);
 if (!HeapTupleIsValid(tuple))
 {
  elog(ERROR, "cache lookup failed for relation %u", partitionId);
 }
 if (!((Form_pg_class) GETSTRUCT(tuple))->relispartition)
 {
  ReleaseSysCache(tuple);
  return "";
 }

 datum = SysCacheGetAttr(RELOID, tuple,
       Anum_pg_class_relpartbound,
       &isnull);
 Assert(!isnull);

 partitionBoundDatum =
  DirectFunctionCall2(pg_get_expr, datum, ObjectIdGetDatum(partitionId));

 partitionBoundString = TextDatumGetCString(partitionBoundDatum);

 ReleaseSysCache(tuple);

 return partitionBoundString;
}
