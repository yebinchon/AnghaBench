
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Var ;
struct TYPE_3__ {scalar_t__ partitionMethod; int partitionColumn; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 scalar_t__ DISTRIBUTE_BY_NONE ;
 TYPE_1__* DistributedTableCacheEntry (int ) ;
 int * copyObject (int ) ;

Var *
DistPartitionKey(Oid relationId)
{
 DistTableCacheEntry *partitionEntry = DistributedTableCacheEntry(relationId);


 if (partitionEntry->partitionMethod == DISTRIBUTE_BY_NONE)
 {
  return ((void*)0);
 }

 return copyObject(partitionEntry->partitionColumn);
}
