
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;
typedef scalar_t__ Form_pg_aggregate ;


 int AGGFNOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static HeapTuple
GetAggregateForm(Oid oid, Form_pg_aggregate *form)
{
 HeapTuple tuple = SearchSysCache1(AGGFNOID, ObjectIdGetDatum(oid));
 if (!HeapTupleIsValid(tuple))
 {
  elog(ERROR, "citus cache lookup failed for aggregate %u", oid);
 }
 *form = (Form_pg_aggregate) GETSTRUCT(tuple);
 return tuple;
}
