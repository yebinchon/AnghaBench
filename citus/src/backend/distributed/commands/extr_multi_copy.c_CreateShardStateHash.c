
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int info ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; } ;
typedef int MemoryContext ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;
typedef int CopyShardState ;


 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int * hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static HTAB *
CreateShardStateHash(MemoryContext memoryContext)
{
 HTAB *shardStateHash = ((void*)0);
 int hashFlags = 0;
 HASHCTL info;

 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(uint64);
 info.entrysize = sizeof(CopyShardState);
 info.hcxt = memoryContext;
 hashFlags = (HASH_ELEM | HASH_CONTEXT | HASH_BLOBS);

 shardStateHash = hash_create("Copy Shard State Hash", 128, &info, hashFlags);

 return shardStateHash;
}
