
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ isDistributedTable; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 int ERROR ;
 TYPE_1__* LookupDistTableCacheEntry (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;

DistTableCacheEntry *
DistributedTableCacheEntry(Oid distributedRelationId)
{
 DistTableCacheEntry *cacheEntry =
  LookupDistTableCacheEntry(distributedRelationId);

 if (cacheEntry && cacheEntry->isDistributedTable)
 {
  return cacheEntry;
 }
 else
 {
  char *relationName = get_rel_name(distributedRelationId);
  ereport(ERROR, (errmsg("relation %s is not distributed", relationName)));
 }
}
