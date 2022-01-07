
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_2__ {scalar_t__ relationId; scalar_t__ shardId; } ;
typedef TYPE_1__ RelationShard ;
typedef scalar_t__ Oid ;



int
CompareRelationShards(const void *leftElement, const void *rightElement)
{
 RelationShard *leftRelationShard = *((RelationShard **) leftElement);
 RelationShard *rightRelationShard = *((RelationShard **) rightElement);
 Oid leftRelationId = leftRelationShard->relationId;
 Oid rightRelationId = rightRelationShard->relationId;
 int64 leftShardId = leftRelationShard->shardId;
 int64 rightShardId = rightRelationShard->shardId;

 if (leftRelationId > rightRelationId)
 {
  return 1;
 }
 else if (leftRelationId < rightRelationId)
 {
  return -1;
 }
 else if (leftShardId > rightShardId)
 {
  return 1;
 }
 else if (leftShardId < rightShardId)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
