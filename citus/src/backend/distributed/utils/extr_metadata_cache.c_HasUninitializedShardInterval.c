
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxValueExists; int minValueExists; } ;
typedef TYPE_1__ ShardInterval ;


 int Assert (int ) ;

__attribute__((used)) static bool
HasUninitializedShardInterval(ShardInterval **sortedShardIntervalArray, int shardCount)
{
 bool hasUninitializedShardInterval = 0;
 ShardInterval *lastShardInterval = ((void*)0);

 if (shardCount == 0)
 {
  return hasUninitializedShardInterval;
 }

 Assert(sortedShardIntervalArray != ((void*)0));





 lastShardInterval = sortedShardIntervalArray[shardCount - 1];
 if (!lastShardInterval->minValueExists || !lastShardInterval->maxValueExists)
 {
  hasUninitializedShardInterval = 1;
 }

 return hasUninitializedShardInterval;
}
