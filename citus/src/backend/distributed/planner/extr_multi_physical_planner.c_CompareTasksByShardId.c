
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_2__ {scalar_t__ anchorShardId; } ;
typedef TYPE_1__ Task ;



__attribute__((used)) static int
CompareTasksByShardId(const void *leftElement, const void *rightElement)
{
 const Task *leftTask = *((const Task **) leftElement);
 const Task *rightTask = *((const Task **) rightElement);

 uint64 leftShardId = leftTask->anchorShardId;
 uint64 rightShardId = rightTask->anchorShardId;


 if (leftShardId > rightShardId)
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
