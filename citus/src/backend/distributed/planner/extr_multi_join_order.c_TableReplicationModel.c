
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char replicationModel; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 TYPE_1__* DistributedTableCacheEntry (int ) ;

char
TableReplicationModel(Oid relationId)
{

 DistTableCacheEntry *partitionEntry = DistributedTableCacheEntry(relationId);

 char replicationModel = partitionEntry->replicationModel;

 return replicationModel;
}
