
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shouldHaveShards; int groupId; int nodeRack; } ;
typedef TYPE_1__ NodeMetadata ;


 int INVALID_GROUP_ID ;
 int WORKER_DEFAULT_RACK ;

__attribute__((used)) static NodeMetadata
DefaultNodeMetadata()
{
 NodeMetadata nodeMetadata = {
  .nodeRack = WORKER_DEFAULT_RACK,
  .shouldHaveShards = 1,
  .groupId = INVALID_GROUP_ID,
 };
 return nodeMetadata;
}
