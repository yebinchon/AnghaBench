
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isValid; } ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_1__ DistTableCacheEntry ;


 int DistTableCacheHash ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
InvalidateDistTableCache(void)
{
 DistTableCacheEntry *cacheEntry = ((void*)0);
 HASH_SEQ_STATUS status;

 hash_seq_init(&status, DistTableCacheHash);

 while ((cacheEntry = (DistTableCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {
  cacheEntry->isValid = 0;
 }
}
