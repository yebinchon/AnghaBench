
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;


 int CacheInvalidateRelcacheByTuple (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;

void
CitusInvalidateRelcacheByRelid(Oid relationId)
{
 HeapTuple classTuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relationId));

 if (HeapTupleIsValid(classTuple))
 {
  CacheInvalidateRelcacheByTuple(classTuple);
  ReleaseSysCache(classTuple);
 }
}
