
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valueTypeLen; int valueByVal; void* maxValue; scalar_t__ maxValueExists; void* minValue; scalar_t__ minValueExists; int shardIndex; int shardId; int valueTypeId; int storageType; int relationId; int type; } ;
typedef TYPE_1__ ShardInterval ;


 void* datumCopy (void*,int ,int ) ;

void
CopyShardInterval(ShardInterval *srcInterval, ShardInterval *destInterval)
{
 destInterval->type = srcInterval->type;
 destInterval->relationId = srcInterval->relationId;
 destInterval->storageType = srcInterval->storageType;
 destInterval->valueTypeId = srcInterval->valueTypeId;
 destInterval->valueTypeLen = srcInterval->valueTypeLen;
 destInterval->valueByVal = srcInterval->valueByVal;
 destInterval->minValueExists = srcInterval->minValueExists;
 destInterval->maxValueExists = srcInterval->maxValueExists;
 destInterval->shardId = srcInterval->shardId;
 destInterval->shardIndex = srcInterval->shardIndex;

 destInterval->minValue = 0;
 if (destInterval->minValueExists)
 {
  destInterval->minValue = datumCopy(srcInterval->minValue,
             srcInterval->valueByVal,
             srcInterval->valueTypeLen);
 }

 destInterval->maxValue = 0;
 if (destInterval->maxValueExists)
 {
  destInterval->maxValue = datumCopy(srcInterval->maxValue,
             srcInterval->valueByVal,
             srcInterval->valueTypeLen);
 }
}
