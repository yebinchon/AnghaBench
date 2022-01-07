
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int info ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; int hash; } ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;
typedef int DistTableCacheEntry ;


 int DistTableCacheHash ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MetadataCacheMemoryContext ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int tag_hash ;

__attribute__((used)) static void
CreateDistTableCache(void)
{
 HASHCTL info;
 MemSet(&info, 0, sizeof(info));
 info.keysize = sizeof(Oid);
 info.entrysize = sizeof(DistTableCacheEntry);
 info.hash = tag_hash;
 info.hcxt = MetadataCacheMemoryContext;
 DistTableCacheHash =
  hash_create("Distributed Relation Cache", 32, &info,
     HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);
}
