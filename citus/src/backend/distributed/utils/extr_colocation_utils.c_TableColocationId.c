
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int colocationId; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 TYPE_1__* DistributedTableCacheEntry (int ) ;

uint32
TableColocationId(Oid distributedTableId)
{
 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(distributedTableId);

 return cacheEntry->colocationId;
}
