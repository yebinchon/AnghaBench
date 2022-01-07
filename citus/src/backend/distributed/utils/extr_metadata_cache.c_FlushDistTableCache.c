
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HASH_SEQ_STATUS ;
typedef int DistTableCacheEntry ;


 int CreateDistTableCache () ;
 int DistTableCacheHash ;
 int ResetDistTableCacheEntry (int *) ;
 int hash_destroy (int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
FlushDistTableCache(void)
{
 DistTableCacheEntry *cacheEntry = ((void*)0);
 HASH_SEQ_STATUS status;

 hash_seq_init(&status, DistTableCacheHash);

 while ((cacheEntry = (DistTableCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {
  ResetDistTableCacheEntry(cacheEntry);
 }

 hash_destroy(DistTableCacheHash);
 CreateDistTableCache();
}
