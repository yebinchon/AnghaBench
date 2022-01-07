
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ modLevel; } ;
typedef TYPE_1__ DistributedPlan ;


 scalar_t__ ROW_MODIFY_READONLY ;

bool
IsModifyDistributedPlan(DistributedPlan *distributedPlan)
{
 return distributedPlan->modLevel > ROW_MODIFY_READONLY;
}
