
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int) ;
 int HASH_REMOVE ;
 int hash_search (int *,void*,int ,int*) ;
 int hash_seq_init (int *,int *) ;
 void* hash_seq_search (int *) ;

void
hash_delete_all(HTAB *htab)
{
 HASH_SEQ_STATUS status;
 void *entry = ((void*)0);

 hash_seq_init(&status, htab);
 while ((entry = hash_seq_search(&status)) != 0)
 {
  bool found = 0;

  hash_search(htab, entry, HASH_REMOVE, &found);
  Assert(found);
 }
}
