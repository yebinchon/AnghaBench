
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relationAccessMode; } ;
typedef TYPE_1__ RelationAccessHashEntry ;
typedef int HASH_SEQ_STATUS ;


 int PARALLEL_ACCESS_MASK ;
 int * RelationAccessHash ;
 int ShouldRecordRelationAccess () ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int hash_seq_term (int *) ;

bool
ParallelQueryExecutedInTransaction(void)
{
 HASH_SEQ_STATUS status;
 RelationAccessHashEntry *hashEntry;

 if (!ShouldRecordRelationAccess() || RelationAccessHash == ((void*)0))
 {
  return 0;
 }

 hash_seq_init(&status, RelationAccessHash);

 hashEntry = (RelationAccessHashEntry *) hash_seq_search(&status);
 while (hashEntry != ((void*)0))
 {
  int relationAccessMode = hashEntry->relationAccessMode;
  if ((relationAccessMode & PARALLEL_ACCESS_MASK))
  {
   hash_seq_term(&status);
   return 1;
  }

  hashEntry = (RelationAccessHashEntry *) hash_seq_search(&status);
 }

 return 0;
}
