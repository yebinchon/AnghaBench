
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int hasSecondaryConnections; TYPE_2__* primaryConnection; } ;
struct TYPE_15__ {int failed; int hasSecondaryConnections; TYPE_2__* primaryConnection; TYPE_6__* colocatedEntry; } ;
struct TYPE_14__ {int representativeValue; int colocationGroupId; int nodeId; int placementId; } ;
struct TYPE_13__ {int representativeValue; int colocationGroupId; } ;
struct TYPE_12__ {scalar_t__ partitionMethod; int representativeValue; int colocationGroupId; int nodeId; int placementId; } ;
typedef TYPE_1__ ShardPlacement ;
typedef TYPE_2__ ConnectionReference ;
typedef TYPE_3__ ConnectionPlacementHashKey ;
typedef TYPE_4__ ConnectionPlacementHashEntry ;
typedef TYPE_3__ ColocatedPlacementsHashKey ;
typedef TYPE_6__ ColocatedPlacementsHashEntry ;


 int AssociatePlacementWithShard (TYPE_4__*,TYPE_1__*) ;
 int ColocatedPlacementsHash ;
 int ConnectionPlacementHash ;
 scalar_t__ DISTRIBUTE_BY_HASH ;
 scalar_t__ DISTRIBUTE_BY_NONE ;
 int HASH_ENTER ;
 void* MemoryContextAllocZero (int ,int) ;
 int TopTransactionContext ;
 void* hash_search (int ,TYPE_3__*,int ,int*) ;

__attribute__((used)) static ConnectionPlacementHashEntry *
FindOrCreatePlacementEntry(ShardPlacement *placement)
{
 ConnectionPlacementHashKey connKey;
 ConnectionPlacementHashEntry *placementEntry = ((void*)0);
 bool found = 0;

 connKey.placementId = placement->placementId;

 placementEntry = hash_search(ConnectionPlacementHash, &connKey, HASH_ENTER, &found);
 if (!found)
 {

  placementEntry->failed = 0;
  placementEntry->primaryConnection = ((void*)0);
  placementEntry->hasSecondaryConnections = 0;
  placementEntry->colocatedEntry = ((void*)0);

  if (placement->partitionMethod == DISTRIBUTE_BY_HASH ||
   placement->partitionMethod == DISTRIBUTE_BY_NONE)
  {
   ColocatedPlacementsHashKey coloKey;
   ColocatedPlacementsHashEntry *colocatedEntry = ((void*)0);

   coloKey.nodeId = placement->nodeId;
   coloKey.colocationGroupId = placement->colocationGroupId;
   coloKey.representativeValue = placement->representativeValue;


   colocatedEntry = hash_search(ColocatedPlacementsHash, &coloKey, HASH_ENTER,
           &found);
   if (!found)
   {
    void *conRef = MemoryContextAllocZero(TopTransactionContext,
               sizeof(ConnectionReference));

    ConnectionReference *connectionReference = (ConnectionReference *) conRef;






    connectionReference->colocationGroupId = placement->colocationGroupId;
    connectionReference->representativeValue = placement->representativeValue;





    colocatedEntry->primaryConnection = connectionReference;

    colocatedEntry->hasSecondaryConnections = 0;
   }





   placementEntry->primaryConnection = colocatedEntry->primaryConnection;
   placementEntry->colocatedEntry = colocatedEntry;
  }
  else
  {
   void *conRef = MemoryContextAllocZero(TopTransactionContext,
              sizeof(ConnectionReference));

   placementEntry->primaryConnection = (ConnectionReference *) conRef;
  }
 }


 AssociatePlacementWithShard(placementEntry, placement);

 return placementEntry;
}
