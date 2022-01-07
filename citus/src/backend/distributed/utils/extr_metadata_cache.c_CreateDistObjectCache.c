
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int info ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; int hash; } ;
typedef TYPE_1__ HASHCTL ;
typedef int DistObjectCacheEntryKey ;
typedef int DistObjectCacheEntry ;


 int DistObjectCacheHash ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MetadataCacheMemoryContext ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int tag_hash ;

__attribute__((used)) static void
CreateDistObjectCache(void)
{
 HASHCTL info;
 MemSet(&info, 0, sizeof(info));
 info.keysize = sizeof(DistObjectCacheEntryKey);
 info.entrysize = sizeof(DistObjectCacheEntry);
 info.hash = tag_hash;
 info.hcxt = MetadataCacheMemoryContext;
 DistObjectCacheHash =
  hash_create("Distributed Object Cache", 32, &info,
     HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);
}
