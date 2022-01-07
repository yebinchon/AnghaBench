
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int relationAccessMode; } ;
struct TYPE_5__ {int relationId; } ;
typedef int ShardPlacementAccessType ;
typedef int RelationAccessMode ;
typedef TYPE_1__ RelationAccessHashKey ;
typedef TYPE_2__ RelationAccessHashEntry ;
typedef int Oid ;


 int HASH_FIND ;
 int PARALLEL_MODE_FLAG_OFFSET ;
 int RELATION_NOT_ACCESSED ;
 int RELATION_PARALLEL_ACCESSED ;
 int RELATION_REFERENCE_ACCESSED ;
 int RelationAccessHash ;
 int ShouldRecordRelationAccess () ;
 TYPE_2__* hash_search (int ,TYPE_1__*,int ,int*) ;

__attribute__((used)) static RelationAccessMode
GetRelationAccessMode(Oid relationId, ShardPlacementAccessType accessType)
{
 RelationAccessHashKey hashKey;
 RelationAccessHashEntry *hashEntry;
 int relationAcessMode = 0;
 bool found = 0;
 int parallelRelationAccessBit = accessType + PARALLEL_MODE_FLAG_OFFSET;


 if (!ShouldRecordRelationAccess())
 {
  return RELATION_NOT_ACCESSED;
 }

 hashKey.relationId = relationId;

 hashEntry = hash_search(RelationAccessHash, &hashKey, HASH_FIND, &found);
 if (!found)
 {

  return RELATION_NOT_ACCESSED;
 }


 relationAcessMode = hashEntry->relationAccessMode;
 if (!(relationAcessMode & (1 << accessType)))
 {

  return RELATION_NOT_ACCESSED;
 }

 if (relationAcessMode & (1 << parallelRelationAccessBit))
 {
  return RELATION_PARALLEL_ACCESSED;
 }
 else
 {
  return RELATION_REFERENCE_ACCESSED;
 }
}
