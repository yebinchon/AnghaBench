
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ distPartitionRelationId; scalar_t__ distObjectRelationId; } ;
struct TYPE_4__ {int isValid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ DistTableCacheEntry ;
typedef int Datum ;


 int DistTableCacheHash ;
 int HASH_FIND ;
 scalar_t__ InvalidOid ;
 int InvalidateDistObjectCache () ;
 int InvalidateDistTableCache () ;
 int InvalidateMetadataSystemCache () ;
 TYPE_3__ MetadataCache ;
 TYPE_1__* hash_search (int ,void*,int ,int*) ;

__attribute__((used)) static void
InvalidateDistRelationCacheCallback(Datum argument, Oid relationId)
{

 if (relationId == InvalidOid)
 {
  InvalidateDistTableCache();
  InvalidateDistObjectCache();
 }
 else
 {
  void *hashKey = (void *) &relationId;
  bool foundInCache = 0;


  DistTableCacheEntry *cacheEntry = hash_search(DistTableCacheHash, hashKey,
               HASH_FIND, &foundInCache);
  if (foundInCache)
  {
   cacheEntry->isValid = 0;
  }






  if (relationId == MetadataCache.distPartitionRelationId)
  {
   InvalidateMetadataSystemCache();
  }

  if (relationId == MetadataCache.distObjectRelationId)
  {
   InvalidateDistObjectCache();
  }
 }
}
