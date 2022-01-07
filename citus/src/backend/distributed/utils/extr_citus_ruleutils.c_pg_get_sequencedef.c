
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int * HeapTuple ;
typedef int * Form_pg_sequence ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int ReleaseSysCache (int *) ;
 int SEQRELID ;
 int * SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

Form_pg_sequence
pg_get_sequencedef(Oid sequenceRelationId)
{
 Form_pg_sequence pgSequenceForm = ((void*)0);
 HeapTuple heapTuple = ((void*)0);

 heapTuple = SearchSysCache1(SEQRELID, sequenceRelationId);
 if (!HeapTupleIsValid(heapTuple))
 {
  elog(ERROR, "cache lookup failed for sequence %u", sequenceRelationId);
 }

 pgSequenceForm = (Form_pg_sequence) GETSTRUCT(heapTuple);

 ReleaseSysCache(heapTuple);

 return pgSequenceForm;
}
