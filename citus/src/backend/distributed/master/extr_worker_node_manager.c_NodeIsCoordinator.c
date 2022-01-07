
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ groupId; } ;
typedef TYPE_1__ WorkerNode ;


 scalar_t__ COORDINATOR_GROUP_ID ;

bool
NodeIsCoordinator(WorkerNode *node)
{
 return node->groupId == COORDINATOR_GROUP_ID;
}
