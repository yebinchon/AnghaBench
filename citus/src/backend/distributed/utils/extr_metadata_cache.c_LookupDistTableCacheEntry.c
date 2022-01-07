
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int isValid; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 int AcceptInvalidationMessages () ;
 int BuildDistTableCacheEntry (TYPE_1__*) ;
 int CheckCitusVersion (int) ;
 int CitusHasBeenLoaded () ;
 int DEBUG1 ;
 int DistTableCacheHash ;
 int ERROR ;
 scalar_t__ EnableVersionChecks ;
 int HASH_ENTER ;
 int HOLD_INTERRUPTS () ;
 int InitializeCaches () ;
 int IsDistributedTableViaCatalog (int ) ;
 int RESUME_INTERRUPTS () ;
 int ResetDistTableCacheEntry (TYPE_1__*) ;
 int citusVersionKnownCompatible ;
 TYPE_1__* hash_search (int ,void*,int ,int*) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static DistTableCacheEntry *
LookupDistTableCacheEntry(Oid relationId)
{
 DistTableCacheEntry *cacheEntry = ((void*)0);
 bool foundInCache = 0;
 void *hashKey = (void *) &relationId;






 if (!CitusHasBeenLoaded())
 {
  return ((void*)0);
 }

 InitializeCaches();





 if (!citusVersionKnownCompatible && EnableVersionChecks)
 {
  bool isDistributed = IsDistributedTableViaCatalog(relationId);
  int reportLevel = DEBUG1;







  if (isDistributed)
  {
   reportLevel = ERROR;
  }

  if (!CheckCitusVersion(reportLevel))
  {

   return ((void*)0);
  }
 }

 cacheEntry = hash_search(DistTableCacheHash, hashKey, HASH_ENTER, &foundInCache);


 if (foundInCache)
 {




  AcceptInvalidationMessages();

  if (cacheEntry->isValid)
  {
   return cacheEntry;
  }


  ResetDistTableCacheEntry(cacheEntry);
 }


 memset(((char *) cacheEntry) + sizeof(Oid), 0,
     sizeof(DistTableCacheEntry) - sizeof(Oid));







 HOLD_INTERRUPTS();


 BuildDistTableCacheEntry(cacheEntry);


 cacheEntry->isValid = 1;

 RESUME_INTERRUPTS();

 return cacheEntry;
}
