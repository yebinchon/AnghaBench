
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int info ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; int hash; } ;
typedef int RelationAccessHashKey ;
typedef int RelationAccessHashEntry ;
typedef TYPE_1__ HASHCTL ;


 int ConnectionContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int RelationAccessHash ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int tag_hash ;

void
AllocateRelationAccessHash(void)
{
 HASHCTL info;
 uint32 hashFlags = 0;

 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(RelationAccessHashKey);
 info.entrysize = sizeof(RelationAccessHashEntry);
 info.hash = tag_hash;
 info.hcxt = ConnectionContext;
 hashFlags = (HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 RelationAccessHash = hash_create("citus connection cache (relationid)",
          8, &info, hashFlags);
}
