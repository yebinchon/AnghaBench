
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aggcombinefn; int aggtranstype; } ;
struct TYPE_3__ {scalar_t__ typtype; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;
typedef TYPE_2__* Form_pg_aggregate ;


 int AGGFNOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_PSEUDO ;
 int elog (int ,char*) ;

__attribute__((used)) static bool
AggregateEnabledCustom(Oid aggregateOid)
{
 HeapTuple aggTuple;
 Form_pg_aggregate aggform;
 HeapTuple typeTuple;
 Form_pg_type typeform;
 bool supportsSafeCombine;

 aggTuple = SearchSysCache1(AGGFNOID, aggregateOid);
 if (!HeapTupleIsValid(aggTuple))
 {
  elog(ERROR, "citus cache lookup failed.");
 }
 aggform = (Form_pg_aggregate) GETSTRUCT(aggTuple);

 if (aggform->aggcombinefn == InvalidOid)
 {
  ReleaseSysCache(aggTuple);
  return 0;
 }

 typeTuple = SearchSysCache1(TYPEOID, aggform->aggtranstype);
 if (!HeapTupleIsValid(typeTuple))
 {
  elog(ERROR, "citus cache lookup failed.");
 }
 typeform = (Form_pg_type) GETSTRUCT(typeTuple);

 supportsSafeCombine = typeform->typtype != TYPTYPE_PSEUDO;

 ReleaseSysCache(aggTuple);
 ReleaseSysCache(typeTuple);

 return supportsSafeCombine;
}
