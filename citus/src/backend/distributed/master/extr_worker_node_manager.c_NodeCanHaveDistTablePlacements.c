
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shouldHaveShards; } ;
typedef TYPE_1__ WorkerNode ;


 int NodeIsPrimary (TYPE_1__*) ;

__attribute__((used)) static bool
NodeCanHaveDistTablePlacements(WorkerNode *node)
{
 if (!NodeIsPrimary(node))
 {
  return 0;
 }

 return node->shouldHaveShards;
}
