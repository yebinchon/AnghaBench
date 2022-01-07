
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isDistributedTable; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 TYPE_1__* LookupDistTableCacheEntry (int ) ;

bool
IsDistributedTable(Oid relationId)
{
 DistTableCacheEntry *cacheEntry = ((void*)0);

 cacheEntry = LookupDistTableCacheEntry(relationId);





 if (!cacheEntry)
 {
  return 0;
 }

 return cacheEntry->isDistributedTable;
}
