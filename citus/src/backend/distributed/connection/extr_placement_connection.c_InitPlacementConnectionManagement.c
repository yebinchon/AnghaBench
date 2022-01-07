
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int info ;
struct TYPE_4__ {int keysize; int entrysize; void* hcxt; void* hash; int match; } ;
typedef TYPE_1__ HASHCTL ;
typedef int ConnectionShardHashKey ;
typedef int ConnectionShardHashEntry ;
typedef int ConnectionPlacementHashKey ;
typedef int ConnectionPlacementHashEntry ;
typedef int ColocatedPlacementsHashKey ;
typedef int ColocatedPlacementsHashEntry ;


 int AllocateRelationAccessHash () ;
 void* ColocatedPlacementsHash ;
 int ColocatedPlacementsHashCompare ;
 void* ColocatedPlacementsHashHash ;
 void* ConnectionContext ;
 void* ConnectionPlacementHash ;
 void* ConnectionShardHash ;
 int HASH_BLOBS ;
 int HASH_COMPARE ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 void* hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 void* tag_hash ;

void
InitPlacementConnectionManagement(void)
{
 HASHCTL info;
 uint32 hashFlags = 0;


 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(ConnectionPlacementHashKey);
 info.entrysize = sizeof(ConnectionPlacementHashEntry);
 info.hash = tag_hash;
 info.hcxt = ConnectionContext;
 hashFlags = (HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 ConnectionPlacementHash = hash_create("citus connection cache (placementid)",
            64, &info, hashFlags);


 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(ColocatedPlacementsHashKey);
 info.entrysize = sizeof(ColocatedPlacementsHashEntry);
 info.hash = ColocatedPlacementsHashHash;
 info.match = ColocatedPlacementsHashCompare;
 info.hcxt = ConnectionContext;
 hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT | HASH_COMPARE);

 ColocatedPlacementsHash = hash_create("citus connection cache (colocated placements)",
            64, &info, hashFlags);


 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(ConnectionShardHashKey);
 info.entrysize = sizeof(ConnectionShardHashEntry);
 info.hash = tag_hash;
 info.hcxt = ConnectionContext;
 hashFlags = (HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 ConnectionShardHash = hash_create("citus connection cache (shardid)",
           64, &info, hashFlags);


 AllocateRelationAccessHash();
}
