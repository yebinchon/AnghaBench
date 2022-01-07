
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;
typedef scalar_t__ Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static HeapTuple
GetTypeForm(Oid oid, Form_pg_type *form)
{
 HeapTuple tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(oid));
 if (!HeapTupleIsValid(tuple))
 {
  elog(ERROR, "citus cache lookup failed for type %u", oid);
 }
 *form = (Form_pg_type) GETSTRUCT(tuple);
 return tuple;
}
