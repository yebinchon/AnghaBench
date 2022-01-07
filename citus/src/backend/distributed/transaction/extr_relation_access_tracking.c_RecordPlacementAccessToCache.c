
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int relationAccessMode; } ;
struct TYPE_5__ {int relationId; } ;
typedef int ShardPlacementAccessType ;
typedef TYPE_1__ RelationAccessHashKey ;
typedef TYPE_2__ RelationAccessHashEntry ;
typedef int Oid ;


 int HASH_ENTER ;
 int RelationAccessHash ;
 TYPE_2__* hash_search (int ,TYPE_1__*,int ,int*) ;

__attribute__((used)) static void
RecordPlacementAccessToCache(Oid relationId, ShardPlacementAccessType accessType)
{
 RelationAccessHashKey hashKey;
 RelationAccessHashEntry *hashEntry;
 bool found = 0;

 hashKey.relationId = relationId;

 hashEntry = hash_search(RelationAccessHash, &hashKey, HASH_ENTER, &found);
 if (!found)
 {
  hashEntry->relationAccessMode = 0;
 }


 hashEntry->relationAccessMode |= (1 << (accessType));
}
